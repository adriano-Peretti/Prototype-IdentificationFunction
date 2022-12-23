namespace functionBar
{
    public class BarInfo
    {
        // Dados da barra
        public string currentPhase;
        public string currentCircuit;
        public string currentBar;
        public string currentSlot;
        public string currentPosition;
        public string currentVoltage;
        public string voltageBetweenBars;

        // Dados da barra da mesma ranhura
        public string otherPhase;
        public string otherCircuit;
        public string otherBar;
        public string otherPosition;
        public string otherVoltage;
    }

    // Estados da barra para aplicacao de shader
    public class BarState
    {
        public StateShader state;
        public HierarchyLevel level;
    }

    // Estados de Shader
    public enum StateShader
    {
        Normal,
        Selected,
        Hierarchy
    }

    // Nivel da hierarquia
    public enum HierarchyLevel
    {
        LevelOne,
        LevelTwo,
        LevelTree
    }
}