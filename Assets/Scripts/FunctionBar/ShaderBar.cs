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
                    material.color = baseColor;
                    break;
                case StateShader.Selected:
                    material.color = interactionColor;
                    break;
                case StateShader.Hierarchy:
                    material.color = ApplyShaderWithHierarchy(barState.level);
                    break;
            }
        }

        // Aplica o shader nas barras conforme a hierarquia
        private Color ApplyShaderWithHierarchy(HierarchyLevel level)
        {
            switch (level)
            {
                default:
                case HierarchyLevel.LevelOne:
                    return levelOneColor;
                case HierarchyLevel.LevelTwo:
                    return levelTwoColor;
                case HierarchyLevel.LevelTree:
                    return levelTreeColor;
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
    }
}