using UnityEngine;

namespace functionBar
{
    public class Hierarchy : MonoBehaviour
    {
        public HierarchyLevel AlterLevelHierarchy(HierarchyLevel level)
        {
            switch (level)
            {
                case HierarchyLevel.LevelOne:
                    return HierarchyLevel.LevelTwo;
                default:
                case HierarchyLevel.LevelTwo:
                    return HierarchyLevel.LevelTree;
            }
        }
    }
}