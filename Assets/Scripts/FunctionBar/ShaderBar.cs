using System.Collections.Generic;
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

        private void Start()
        {
            Allbars = GameObject.FindGameObjectsWithTag("Bar");
        }

        // Aplica o shader na barra
        public void ApplyShader(GameObject bar, BarState state)
        {
            // Captura o render do modelo 3D da barra
            Renderer render = bar.GetComponent<Renderer>();

            // Associa o material da barra ao renderer
            Material material = render.material;

            switch (state)
            {
                default:
                case BarState.Normal:
                    material.color = baseColor;
                    break;
                case BarState.Selected:
                    material.color = interactionColor;
                    break;
                case BarState.LevelOne:
                    material.color = levelOneColor;
                    break;
                case BarState.LevelTwo:
                    material.color = levelTwoColor;
                    break;
                case BarState.LevelTree:
                    material.color = levelTreeColor;
                    break;
            }
        }

        // Aplica o shader nas barras conforme a hierarquia
        public void ApplyShaderWithHierarchy(List<GameObject> bars, BarState state)
        {
            foreach (var bar in bars)
            {
                ApplyShader(bar, state);
            }
        }

        public void ClearShader(GameObject bar)
        {
            ApplyShader(bar, BarState.Normal);
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