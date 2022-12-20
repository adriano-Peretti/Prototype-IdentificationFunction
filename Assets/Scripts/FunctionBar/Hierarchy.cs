using UnityEngine;

namespace functionBar
{
    public class Hierarchy : MonoBehaviour
    {
        public BarState AlterStateHierarchy(BarState barState)
        {
            Debug.Log("Entrou com o estado: " + barState);
            BarState result;

            switch (barState)
            {
                default:
                case BarState.Normal:
                    result = BarState.LevelOne;
                    Debug.Log("Mudou para Estado 1");
                    break;
                case BarState.LevelOne:
                    result = BarState.LevelTwo;
                    Debug.Log("Mudou para Estado 2");
                    break;
                case BarState.LevelTwo:
                    result = BarState.LevelTree;
                    Debug.Log("Mudou para Estado 3");
                    break;
                case BarState.LevelTree:
                    result = BarState.Normal;
                    Debug.Log("Mudou para Normal");
                    break;
            }

            return result;
        }
    }
}