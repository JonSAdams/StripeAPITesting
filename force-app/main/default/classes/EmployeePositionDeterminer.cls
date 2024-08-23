public class EmployeePositionDeterminer {
    public String determineEmployeePosition(String name, Decimal salary) {
        String position = '';
        if (salary == 5000) {
            position = 'Manager';
        } 
        else if (salary < 5000) {
            position = 'Associate';
        }
        String result = name + ' is assigned to the position of ' + position +' with a salary of $'+ salary +'.';
        return result;
    }
}