using UnityEngine;
using UnityEngine.UI;

namespace functionBar
{
    public class CanvasBar : MonoBehaviour
    {
        [Header("Painel de Informações")]
        // Indica se o painel de informações da barra foi ativado
        // private bool displayed = false;

        // Painel de informações
        [SerializeField] private GameObject Panel;

        // Painel com os dados da barra
        [SerializeField] private GameObject PanelBarClicked;

        // Painel com os dados da barra da mesma ranhura
        [SerializeField] private GameObject PanelBetweenBar;

        // Textos de interface com os dados da barra selecionada
        private Text currentPhase;
        private Text currentCircuit;
        private Text currentBar;
        private Text currentSlot;
        private Text currentPosition;
        private Text currentVoltage;
        private Text VoltageBetweenBars;

        // Textos de interface com os dados da barra da mesma ranhura
        private Text otherPhase;
        private Text otherCircuit;
        private Text otherBar;
        private Text otherPosition;
        private Text otherVoltage;

        [Header("Niveis da Hierarquia")]

        // Imagens indicando os niveis da hierarquia
        private GameObject levelOne;
        private GameObject levelTwo;
        private GameObject levelTree;

        private void Start()
        {
            // Busca o componente Text nos paineis e associa aos texto
            currentPhase = PanelBarClicked.transform.Find("CurrentPhase").GetComponent<Text>();
            currentCircuit = PanelBarClicked.transform.Find("CurrentCircuit").GetComponent<Text>();
            currentBar = PanelBarClicked.transform.Find("CurrentBar").GetComponent<Text>();
            currentSlot = PanelBarClicked.transform.Find("CurrentSlot").GetComponent<Text>();
            currentPosition = PanelBarClicked.transform.Find("CurrentPosition").GetComponent<Text>();
            currentVoltage = PanelBarClicked.transform.Find("CurrentVoltage").GetComponent<Text>();
            VoltageBetweenBars = PanelBarClicked.transform.Find("VoltageBetweenBars").GetComponent<Text>();

            otherPhase = PanelBetweenBar.transform.Find("OtherPhase").GetComponent<Text>();
            otherCircuit = PanelBetweenBar.transform.Find("OtherCircuit").GetComponent<Text>();
            otherBar = PanelBetweenBar.transform.Find("OtherBar").GetComponent<Text>();
            otherPosition = PanelBetweenBar.transform.Find("OtherPosition").GetComponent<Text>();
            otherVoltage = PanelBetweenBar.transform.Find("OtherVoltage").GetComponent<Text>();

            // Busca o GameObject na interface e associa ao objeto
            levelOne = GameObject.Find("one");
            levelTwo = GameObject.Find("two");
            levelTree = GameObject.Find("tree");

            // Inicia os paineis de informações e leveis desligado
            DesativatePanel();
        }

        // Associa os valores recebidos do dicionario aos textos na interface
        public void AssociateValuesInCanvas(BarInfo bar)
        {
            currentPhase.text = "Fase: " + bar.currentPhase;
            currentCircuit.text = "Circuito: " + bar.currentCircuit;
            currentBar.text = "Barra: " + bar.currentBar;
            currentSlot.text = "Ranhura: " + bar.currentSlot;
            currentPosition.text = "Posição: " + bar.currentPosition;
            currentVoltage.text = "Tensão: " + bar.currentVoltage;
            VoltageBetweenBars.text = "Tensão entre Barras: " + bar.voltageBetweenBars;

            otherPhase.text = "Fase: " + bar.otherPhase;
            otherCircuit.text = "Circuito: " + bar.otherCircuit;
            otherBar.text = "Barra: " + bar.otherBar;
            otherPosition.text = "Posição: " + bar.currentPosition;
            otherVoltage.text = "Tensão: " + bar.otherVoltage;
        }

        // Função que ativa o painel
        public void AtivatePanel()
        {
            Panel.SetActive(true);
            levelOne.SetActive(true);
        }

        // Função que desativa o painel
        public void DesativatePanel()
        {
            Panel.SetActive(false);
            levelOne.SetActive(false);
            levelTwo.SetActive(false);
            levelTree.SetActive(false);
        }

        public void AlterIndicatorLevel(HierarchyLevel level)
        {
            switch (level)
            {
                default:
                case HierarchyLevel.LevelOne:
                    levelOne.SetActive(true);
                    levelTwo.SetActive(false);
                    levelTree.SetActive(false);
                    break;
                case HierarchyLevel.LevelTwo:
                    levelOne.SetActive(true);
                    levelTwo.SetActive(true);
                    levelTree.SetActive(false);
                    break;
                case HierarchyLevel.LevelTree:
                    levelOne.SetActive(true);
                    levelTwo.SetActive(true);
                    levelTree.SetActive(true);
                    break;
            }
        }
    }
}