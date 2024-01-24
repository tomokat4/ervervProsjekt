class Forbund{
    //Datafields
    String name;
    String symbol;

    //Constructors

    Forbund(){
        name = "ikke satt";
        symbol = "N/A";
    }

    Forbund(String newName, String newSymbol){
        name = newName;
        symbol = newSymbol;
    }

    //Methods
    void getForbund(){
        System.out.println("Dette forbundet heter " + name);
    }

    void setForbund(String newName, String newSymbol){
        name = newName;
        symbol = newSymbol;
        System.out.println("Forbund har blitt endret til " + name + 
        " med forkortelse " + symbol + ".");
    }
}

class Program extends Forbund{
    //Datafields
    String program;
    String vapenType; //pistol eller sportrifle
    boolean reserveStatus;

    //Constructor
    Program(String newProgram, String newVapenType, boolean newReserveStatus){
        program = newProgram;
        vapenType = newVapenType;
        reserveStatus = newReserveStatus;
    }

}

class Aktivitet extends Forbund{
    //Datafields
    double antallTreninger;
    double antallStarter;

    //Constructor
    Aktivitet(){
        antallTreninger = 0;
        antallStarter = 0;
    }

    Aktivitet(double newAntallTreninger, double newAntallStarter){
        antallTreninger = newAntallTreninger;
        antallStarter = newAntallStarter;
    }
    
}

class AktivitetsKrav extends Program{
    //Datafields
    double kravTreninger;
    double kravStarter;

    //Constructor
    AktivitetsKrav(vapenType, reserveStatus){
        if (vapenType == "Pistol"){
            if (reserveStatus == false){
                kravTreninger = 10;
                kravStarter = 0;
            }
            else{
                kravTreninger = 0;
                kravStarter = 10;
            }
        }
        else if (vapenType == "Sportrifle"){
            if (reserveStatus == false){
                kravTreninger = 10;
                kravStarter = 10;
            }
            else{
                kravTreninger = 0;
                kravStarter = 10;
            }
        }
    }

    //Methods

    void checkKrav(){
        System.out.println("Aktivitetskravet i " + name + " " + program + " er: "
         + kravTreninger)
    }
}

class TestErverv{

}