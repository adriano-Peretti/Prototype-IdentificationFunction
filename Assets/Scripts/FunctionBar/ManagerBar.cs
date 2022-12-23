using System.Collections;
using UnityEngine;

namespace functionBar
{
    [RequireComponent(typeof(InterationBar))]
    [RequireComponent(typeof(ShaderBar))]
    [RequireComponent(typeof(Hierarchy))]
    [RequireComponent(typeof(SearchBar))]
    public class ManagerBar : MonoBehaviour
    {
        // Classes
        [Header("Classes")]
        private CanvasBar canvasBar;
        private InterationBar interationBar;
        private ShaderBar shaderBar;
        private Hierarchy hierarchy;
        private SearchBar searchbar;

        // Estado atual da barra
        private BarState currentBarState = new BarState();
        private BarState lastBarState = new BarState();

        private GameObject lastBar;
        //private List<GameObject> groupBarHierarchy;
        private GameObject[] groupBarHierarchy;

        private void Start()
        {
            // Associa os componentes de scripts ao manager
            interationBar = GetComponent<InterationBar>();
            shaderBar = GetComponent<ShaderBar>();
            hierarchy = GetComponent<Hierarchy>();
            searchbar = GetComponent<SearchBar>();
            canvasBar = GameObject.Find("PanelBar").GetComponent<CanvasBar>();

            // Captura os Eventos e envia para a função
            interationBar.OnSelectedBar += InterationBarBar_OnSelectedBar;
            interationBar.OnEscape += InterationBar_OnEscape;
            interationBar.OnAlterHierarchy += InterationBar_OnAlterHierarchy;
            interationBar.OnApplyShader += InterationBar_OnApplyShader;

            groupBarHierarchy = searchbar.GetAllBars();

            ResetBarState();
        }

        private void InterationBar_OnApplyShader()
        {
            StartCoroutine(CallTimerShader());
        }

        private IEnumerator CallTimerShader()
        {
            shaderBar.ApplyShaderInGroup(groupBarHierarchy, currentBarState);
            yield return new WaitForSeconds(10f);
            shaderBar.ApplyShaderInGroup(groupBarHierarchy, lastBarState);
        }

        //public static void Resize<T>(ref T[]? array, int newSize);

        // Função de evento que aciona quando aperta a tela H
        private void InterationBar_OnAlterHierarchy(GameObject bar)
        {
            currentBarState.level = hierarchy.AlterLevelHierarchy(currentBarState.level);
            lastBarState.level = currentBarState.level;

            currentBarState.state = StateShader.Hierarchy;

            canvasBar.AlterIndicatorLevel(currentBarState.level);

            // Busca as informações da barra selecionada
            //var resultInfo = searchbar.Search(bar.name);

            var resultgroupBarHierarchy = searchbar.CaptureObjectsInGame(bar.name, currentBarState.level);
            groupBarHierarchy = resultgroupBarHierarchy;

            var arrayAllBars = searchbar.GetAllBars();

            //for (int i = 0; i < arrayAllBars.Length; i++)
            //{
            //    arrayAllBars[i].SetActive(false);
            //}

            //for (int i = 0; i < groupBarHierarchy.Length; i++)
            //{
            //    groupBarHierarchy[i].SetActive(true);
            //}




            // Função que busca todos os objetos daquela hierarquia
            // func(currentBarState);

            // Verifica se o estado atual da barra é selecionado
            //if (currentBarState.Equals(BarState.Selected))
            //{
            //    // && Se a barra não faz parte daquela hierarquia
            //    // Desativa os levels
            //    canvasBar.DesativeLevels();

            //    // Reseta para estado normal
            //    currentBarState = BarState.Normal;
            //}

            //// Reseta o shader para cor no estado normal
            //shaderBar.ClearAllShader();

            //// Aplica a cor na barra selecionada
            ////shaderBar.ApplyShader(lastBar, BarState.Selected);

            //// Altera o Level da hierarquia

            ////currentBarState.level = hierarchy.AlterLevelHierarchy(currentBarState.level);
            //currentBarState.AlterLevelHierarchy(currentBarState.level);

            //currentBarState.level = hierarchy.AlterLevelHierarchy(currentBarState.level);

            //// Ativa no canvas o indicador de niveis



            //// Busca os GameObjects conforme a lista de barras
            //List<GameObject> listGameObjects = CaptureObjects(resultListGameObject);

            //// Função que aplica o shader nas barras conforme sua hierarquia
            //shaderBar.ApplyShaderWithHierarchy(listGameObjects, currentBarState);
        }

        // Função de evento que aciona quando aperta a tela ESC
        private void InterationBar_OnEscape(GameObject bar)
        {
            // Desativa o painel
            canvasBar.DesativatePanel();

            // Reseta o shader para cor no estado normal
            shaderBar.ClearAllShader();

            ResetBarState();
        }

        // Função de evento que aciona quando a barra for clicada
        private void InterationBarBar_OnSelectedBar(GameObject bar)
        {
            //======================BARRA ANTERIOR==========================

            // Reseta o shader da barra selecionada anteriormente para o estado anterior
            if (lastBar != null)
            {
                shaderBar.ApplyShader(lastBar, lastBarState);
            } else
            {
                lastBarState.state = currentBarState.state;
                //lastBarState.level = currentBarState.level;
            }

            lastBar = bar;
            //======================BARRA ANTERIOR==========================

            //======================CANVAS==========================

            // Busca as informações da barra selecionada
            var resultInfo = searchbar.Search(bar.name);

            // Associa os valores ao canvas
            canvasBar.AssociateValuesInCanvas(resultInfo);

            // Ativa o painel
            canvasBar.AtivatePanel();

            //======================CANVAS==========================

            //======================SHADER==========================

            // Indica que o estado da barra é selecionado
            currentBarState.state = StateShader.Selected;

            // Aplica cor na barra selecionada
            shaderBar.ApplyShader(bar, currentBarState);

            //======================SHADER==========================
        }

        private void ResetBarState()
        {
            // Indica que o estado atual é normal
            currentBarState.state = StateShader.Hierarchy;
            currentBarState.level = HierarchyLevel.LevelOne;
        }
    }
}