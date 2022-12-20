using System;
using UnityEngine;

namespace functionBar
{
    public class InterationBar : MonoBehaviour
    {
        [Header("Interação")]
        // Distancia máxima de interação
        private float interactionDistance = 25f;

        // Evento para enviar a informacao do click no objeto para o Manager
        public event Action<GameObject> OnSelectedBar;

        // Evento para enviar a informacao do botão de escape para o Manager
        public event Action<GameObject> OnAlterHierarchy;

        // Evento para enviar a informacao do botão de escape para o Manager
        public event Action<GameObject> OnEscape;

        // Indica barra selecionada
        private GameObject barSelected = null;

        private void Update()
        {
            // Clique com o botão esquerdo do mouse
            if (Input.GetMouseButtonDown(0))
            {
                // Captura a posição do mouse na camera
                Ray mouseRay = Camera.main.ScreenPointToRay(Input.mousePosition);

                // Atira o raio
                if (Physics.Raycast(mouseRay, out RaycastHit hit, interactionDistance))
                {
                    // Verifica se o raio teve como retorno uma barra
                    if (hit.collider.CompareTag("Bar"))
                    {
                        // Captura o gameObject da barra
                        barSelected = hit.collider.gameObject;

                        // Aciona o evento de barra selecionada
                        OnSelectedBar?.Invoke(barSelected);
                    }
                }
            }

            if (Input.GetKeyDown(KeyCode.H))
            {
                if (barSelected != null)
                {
                    // Aciona o evento de alterar a hierarquia
                    OnAlterHierarchy?.Invoke(barSelected);
                }
            }

            if (Input.GetKeyDown(KeyCode.Escape))
            {
                if (barSelected != null)
                {
                    // Aciona o evento de cancelar
                    OnEscape?.Invoke(barSelected);

                    // Reseta a seleção da barra
                    barSelected = null;
                }
            }
        }
    }
}
