namespace functionBar
{
    public class Bar
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
    public enum BarState
    {
        Normal,
        Selected,
        LevelOne,
        LevelTwo,
        LevelTree
    }
}