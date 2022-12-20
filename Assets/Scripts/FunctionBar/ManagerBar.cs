using System.Collections.Generic;
using UnityEngine;

namespace functionBar
{
    [RequireComponent(typeof(InterationBar))]
    [RequireComponent(typeof(ShaderBar))]
    [RequireComponent(typeof(Hierarchy))]
    public class ManagerBar : MonoBehaviour
    {
        // Classes
        [Header("Classes")]
        private CanvasBar canvasBar;
        private InterationBar interationBar;
        private ShaderBar shaderBar;
        private Hierarchy hierarchy;
        //public SearchBar searchBar;

        // Estado atual da barra
        private BarState currentBarState;

        private GameObject lastBar;

        private void Start()
        {
            // Associa os componentes de scripts ao manager
            interationBar = GetComponent<InterationBar>();
            shaderBar = GetComponent<ShaderBar>();
            hierarchy = GetComponent<Hierarchy>();
            canvasBar = GameObject.Find("PanelBar").GetComponent<CanvasBar>();

            // Captura os Eventos e envia para a função
            interationBar.OnSelectedBar += InterationBarBar_OnSelectedBar;
            interationBar.OnEscape += InterationBar_OnEscape;
            interationBar.OnAlterHierarchy += InterationBar_OnAlterHierarchy;
        }

        // Função de evento que aciona quando aperta a tela H
        private void InterationBar_OnAlterHierarchy(GameObject bar)
        {
            // Verifica se o estado atual da barra é selecionado
            if (currentBarState.Equals(BarState.Selected))
            {
                // && Se a barra não faz parte daquela hierarquia
                // Desativa os levels
                canvasBar.DesativeLevels();

                // Reseta para estado normal
                currentBarState = BarState.Normal;
            }

            // Reseta o shader para cor no estado normal
            shaderBar.ClearAllShader();

            // Aplica a cor na barra selecionada
            //shaderBar.ApplyShader(lastBar, BarState.Selected);

            // Altera o Level da hierarquia
            currentBarState = hierarchy.AlterStateHierarchy(currentBarState);

            // Ativa no canvas o indicador de niveis
            canvasBar.AlterIndicatorLevel(currentBarState);

            // Busca a lista barras conforme sua hierarquia
            List<Bar> resultListGameObject = SearchList(bar.name, currentBarState);

            // Busca os GameObjects conforme a lista de barras
            List<GameObject> listGameObjects = CaptureObjects(resultListGameObject);

            // Função que aplica o shader nas barras conforme sua hierarquia
            shaderBar.ApplyShaderWithHierarchy(listGameObjects, currentBarState);
        }

        // Função de evento que aciona quando aperta a tela ESC
        private void InterationBar_OnEscape(GameObject bar)
        {
            // Desativa o painel
            canvasBar.DesativatePanel();

            // Desativa os levels
            canvasBar.DesativeLevels();

            // Reseta o shader para cor no estado normal
            shaderBar.ClearAllShader();

            // Indica que o estado atual é normal
            currentBarState = BarState.Normal;
        }

        // Função de evento que aciona quando a barra for clicada
        private void InterationBarBar_OnSelectedBar(GameObject bar)
        {
            // Reseta o shader para cor no estado normal
            //shaderBar.ClearAllShader();
            if (lastBar != null)
            {
                //shaderBar.ApplyShader(lastBar, currentBarState);
                shaderBar.ClearShader(lastBar);
            }

            lastBar = bar;

            // Ativa o painel
            canvasBar.AtivatePanel();

            // Busca a barra selecionada
            var result = Search(bar.name);

            // Associa os valores ao canvas
            canvasBar.AssociateValuesInCanvas(result);

            // Indica que o estado da barra é selecionado
            currentBarState = BarState.Selected;

            // Aplica cor na barra selecionada
            shaderBar.ApplyShader(bar, currentBarState);
        }

        // Função que busca as informações da barra no dicionario de dados
        private Bar Search(string barName)
        {
            Bar findBar = new Bar();

            findBar.currentPhase = "Testando";
            findBar.currentCircuit = "Testando";
            findBar.currentBar = barName;
            findBar.currentSlot = "Testando";
            findBar.currentPosition = "Testando";
            findBar.currentVoltage = "Testando";
            findBar.voltageBetweenBars = "Testando";

            findBar.otherPhase = "Testando";
            findBar.otherCircuit = "Testando";
            findBar.otherBar = "Testando";
            findBar.otherPosition = "Testando";
            findBar.otherVoltage = "Testando";

            return findBar;
        }



        private List<GameObject> CaptureObjects(List<Bar> listBar)
        {
            List<GameObject> gameObjectList = new List<GameObject>();

            foreach (var bar in listBar)
            {
                gameObjectList.Add(GameObject.Find(bar.currentBar));
            }

            return gameObjectList;
        }


        // Função que busca uma lista de barras conforme o nivel da hierarquia
        private List<Bar> SearchList(string barName, BarState barState)
        {
            List<Bar> findBars = new List<Bar>();

            Bar findBar = new Bar();

            findBar.currentPhase = "Testando";
            findBar.currentCircuit = "Testando";
            findBar.currentBar = barName;
            findBar.currentSlot = "Testando";
            findBar.currentPosition = "Testando";
            findBar.currentVoltage = "Testando";
            findBar.voltageBetweenBars = "Testando";

            findBar.otherPhase = "Testando";
            findBar.otherCircuit = "Testando";
            findBar.otherBar = "Testando";
            findBar.otherPosition = "Testando";
            findBar.otherVoltage = "Testando";

            findBars.Add(findBar);

            return findBars;
        }
    }
}