using System;
using UnityEngine;

namespace functionBar
{
    public class SearchBar : MonoBehaviour
    {
        // Todas as barras carregadas
        private GameObject[] allBars;

        private void Start()
        {
            allBars = GameObject.FindGameObjectsWithTag("Bar");
        }

        // Função que busca as informações da barra no dicionario de dados
        public BarInfo Search(string barName)
        {
            BarInfo findBar = new BarInfo();

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

        //// Função que busca todos os objetos daquela hierarquia
        //public void SearchObjects3D(BarState barState)
        //{
        //    switch (barState.state)
        //    {
        //        default:
        //        case StateShader.Normal:

        //            break;
        //        case StateShader.Selected:

        //            break;
        //        case StateShader.Hierarchy:
        //            switch (barState.level)
        //            {
        //                default:
        //                case HierarchyLevel.LevelOne:

        //                    break;
        //                case HierarchyLevel.LevelTwo:

        //                    break;
        //                case HierarchyLevel.LevelTree:

        //                    break;
        //            }
        //            break;
        //    }
        //}

        public GameObject[] CaptureObjectsInGame(string prefix, HierarchyLevel level)
        {
            int i;
            int VARIAVEL = 0;
            //List<GameObject> barsSelected = new List<GameObject>();
            GameObject[] barsSelected = new GameObject[allBars.Length];

            for (i = 0; i < allBars.Length; i++)
            {
                switch (level)
                {
                    default:
                    case HierarchyLevel.LevelOne:
                        break;
                    case HierarchyLevel.LevelTwo:
                        prefix = prefix.Substring(0, 3);
                        break;
                    case HierarchyLevel.LevelTree:
                        prefix = prefix.Substring(0, 5);
                        break;
                }

                if (allBars[i].name.Contains(prefix))
                {
                    VARIAVEL++;
                    barsSelected[i] = allBars[i];
                }
            }

            int x = 0;

            Array.Resize<GameObject>(ref barsSelected, VARIAVEL);
            return barsSelected;
        }

        public GameObject[] GetAllBars()
        {
            return this.allBars;
        }

    }

}
