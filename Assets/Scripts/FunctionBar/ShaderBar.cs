using UnityEngine;

namespace functionBar
{
    public class ShaderBar : MonoBehaviour
    {
        [Header("Shader")]
        // Cor base do objeto
        private Color baseColor = Color.white;

        // Cor quando interagido
        private Color interactionColor = Color.cyan;

        private Color levelOneColor = Color.red;
        private Color levelTwoColor = Color.yellow;
        private Color levelTreeColor = Color.green;

        // Todas as barras carregadas
        private GameObject[] Allbars;

        private BarState barStateAux = new BarState();

        private int currentShaderState = 0;


        private void Start()
        {
            Allbars = GameObject.FindGameObjectsWithTag("Bar");
        }

        // Aplica o shader na barra
        public void ApplyShader(GameObject bar, BarState barState)
        {
            // Captura o render do modelo 3D da barra
            Renderer render = bar.GetComponent<Renderer>();

            // Associa o material da barra ao renderer
            Material material = render.material;

            switch (barState.state)
            {
                default:
                case StateShader.Normal:
                    currentShaderState = 0;
                    DefineParameters(material);
                    break;
                case StateShader.Selected:
                    currentShaderState = 1;
                    DefineParameters(material);

                    break;
                case StateShader.Hierarchy:
                    ApplyShaderWithHierarchy(barState.level);
                    DefineParameters(material);
                    break;
            }
        }

        // Aplica o shader nas barras conforme a hierarquia
        private void ApplyShaderWithHierarchy(HierarchyLevel level)
        {
            switch (level)
            {
                default:
                case HierarchyLevel.LevelOne:
                    currentShaderState = 2;
                    break;
                case HierarchyLevel.LevelTwo:
                    currentShaderState = 3;
                    break;
                case HierarchyLevel.LevelTree:
                    currentShaderState = 4;
                    break;
            }
        }


        public void ApplyShaderInGroup(GameObject[] arrayBars, BarState barState)
        {
            foreach (var bar in arrayBars)
            {
                ApplyShader(bar, barState);
            }
        }

        public void ClearShader(GameObject bar)
        {
            barStateAux.state = StateShader.Normal;

            ApplyShader(bar, barStateAux);
        }

        public void ClearAllShader()
        {
            foreach (var bar in Allbars)
            {
                ClearShader(bar);
            }
        }

        public void DefineParameters(Material material)
        {
            if (currentShaderState == 0)
            {
                material.SetFloat("_State", currentShaderState);
                material.SetFloat("_UseMetallic", currentShaderState);
                material.SetFloat("_UseNormal", currentShaderState);
            }
            else
            {
                material.SetFloat("_State", currentShaderState);
                material.SetFloat("_UseMetallic", 1);
                material.SetFloat("_UseNormal", 1);
            }

        }
    }
}