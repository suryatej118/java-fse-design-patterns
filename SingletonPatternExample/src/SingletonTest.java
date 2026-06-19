public class SingletonTest {
    public static void main(String[] args){
        Logger l1= Logger.getInstance();
        Logger l2= Logger.getInstance();
        l1.log("First log message.");
        l2.log("Second log message.");
        System.out.println("Logger1 HashCode: "+l1.hashCode());
        System.out.println("Logger2 HashCode: "+l2.hashCode());

        if(l1==l2){
            System.out.println("Only one Logger instance exists.");
        }else{
            System.out.println("Multiple Logger instances exist.");
        }
    }
}
