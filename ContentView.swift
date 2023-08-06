//
//  ContentView.swift
//  GPA calculator
//
//  Created by Edgar Jaime on 10/29/22.
//

import SwiftUI

struct ContentView: View {
    @State private var numofClasses = 0
    @State private var gpaAdded = 0
    
    //class enumeration
    enum letterGrade: Double {
        case A = 4
        case B = 3
        case C = 2
        case D = 1
        case E = 0
    }
    //type enumeration
    enum typeClass: Double {
        case AP = 2.4
        case Honors = 2
        case Regular = 1
        case Essential = 0
    }
    //class selection
    @State private var classOneToFour = false
    @State private var classFive = false
    @State private var classSix = false
    @State private var classSeven = false
    @State private var classEight = false
    //letter grade
    @State private var letterOne: letterGrade = letterGrade.E
    @State private var letterTwo: letterGrade = letterGrade.E
    @State private var letterThree: letterGrade = letterGrade.E
    @State private var letterFour: letterGrade = letterGrade.E
    @State private var letterFive: letterGrade = letterGrade.E
    @State private var letterSix: letterGrade = letterGrade.E
    @State private var letterSeven: letterGrade = letterGrade.E
    @State private var letterEight: letterGrade = letterGrade.E
    //type of class
    @State private var typeOne: typeClass = typeClass.Essential
    @State private var typeTwo: typeClass = typeClass.Essential
    @State private var typeThree: typeClass = typeClass.Essential
    @State private var typeFour: typeClass = typeClass.Essential
    @State private var typeFive: typeClass = typeClass.Essential
    @State private var typeSix: typeClass = typeClass.Essential
    @State private var typeSeven: typeClass = typeClass.Essential
    @State private var typeEight: typeClass = typeClass.Essential
    //Calculation
    var finalGPA: Double {
        let classAmount = (numofClasses + 5)
        let oneTotal: Double = (letterOne.rawValue) + (typeOne.rawValue)
        let twoTotal: Double = (letterTwo.rawValue) + (typeTwo.rawValue)
        let threeTotal: Double = (letterThree.rawValue) + (typeThree.rawValue)
        let fourTotal: Double = (letterFour.rawValue) + (typeFour.rawValue)
        let fiveTotal: Double = (letterFive.rawValue) + (typeFive.rawValue)
        let sixTotal: Double = (letterSix.rawValue) + (typeSix.rawValue)
        let sevenTotal: Double = (letterSeven.rawValue) + (typeSeven.rawValue)
        let eightTotal: Double = (letterEight.rawValue) + (typeEight.rawValue)
        let totalClassGPA: Double = (oneTotal+twoTotal+threeTotal+fourTotal+fiveTotal+sixTotal+sevenTotal+eightTotal)
        let totalGPA: Double = (totalClassGPA/Double(classAmount))
        return totalGPA
    }

    
    var body: some View {
        NavigationView{
            Form{
                Section{ //seperates the shit
                    Picker("Select your number of classes", selection: $numofClasses) {
                        ForEach(5..<9){
                            Text("\($0) classes")
                        }
                    }
                    Button("Enter "){
                        if (numofClasses == 0) {
                            classOneToFour = true
                            classFive = true
                            classSix = false
                            classSeven = false
                            classEight = false
                        }
                        if (numofClasses == 1) {
                            classOneToFour = true
                            classFive = true
                            classSix = true
                            classSeven = false
                            classEight = false
                        }
                        if (numofClasses == 2) {
                            classOneToFour = true
                            classFive = true
                            classSix = true
                            classSeven = true
                            classEight = false
                        }
                        if (numofClasses == 3) {
                            classOneToFour = true
                            classFive = true
                            classSix = true
                            classSeven = true
                            classEight = true
                        }
                    }
                } // end of class section
                
                if classOneToFour {
                    Section{ //class 1
                        Picker ("Select your letter grade", selection: $letterOne){
                            Text("A").tag(letterGrade.A)
                            Text("B").tag(letterGrade.B)
                            Text("C").tag(letterGrade.C)
                            Text("D").tag(letterGrade.D)
                            Text("E").tag(letterGrade.E)
                        }
                        Picker ("Select the type of class", selection: $typeOne){
                            Text("Essential").tag(typeClass.Essential)
                            Text("Regular").tag(typeClass.Regular)
                            Text("Honors").tag(typeClass.Honors)
                            Text("AP").tag(typeClass.AP)
                        }
                        //Text("\(Int(letterOne.rawValue))")
                        //Text("\(Double(typeOne.rawValue))")
                    }header: { //names this specific section
                        Text("Class 1 Info") // title for the section
                    }
                }
                if classOneToFour {
                    Section{ //class 2
                        Picker ("Select your letter grade", selection: $letterTwo){
                            Text("A").tag(letterGrade.A)
                            Text("B").tag(letterGrade.B)
                            Text("C").tag(letterGrade.C)
                            Text("D").tag(letterGrade.D)
                            Text("E").tag(letterGrade.E)
                        }
                        Picker ("Select the type of class", selection: $typeTwo){
                            Text("Essential").tag(typeClass.Essential)
                            Text("Regular").tag(typeClass.Regular)
                            Text("Honors").tag(typeClass.Honors)
                            Text("AP").tag(typeClass.AP)
                        }
                    }header: { //names this specific section
                        Text("Class 2 Info") // title for the section
                    }
                }
                if classOneToFour {
                    Section{ //class 3
                        Picker ("Select your letter grade", selection: $letterThree){
                            Text("A").tag(letterGrade.A)
                            Text("B").tag(letterGrade.B)
                            Text("C").tag(letterGrade.C)
                            Text("D").tag(letterGrade.D)
                            Text("E").tag(letterGrade.E)
                        }
                        Picker ("Select the type of class", selection: $typeThree){
                            Text("Essential").tag(typeClass.Essential)
                            Text("Regular").tag(typeClass.Regular)
                            Text("Honors").tag(typeClass.Honors)
                            Text("AP").tag(typeClass.AP)
                        }
                    }header: { //names this specific section
                        Text("Class 3 Info") // title for the section
                    }
                }
                if classOneToFour {
                    Section{ //class 4
                        Picker ("Select your letter grade", selection: $letterFour){
                            Text("A").tag(letterGrade.A)
                            Text("B").tag(letterGrade.B)
                            Text("C").tag(letterGrade.C)
                            Text("D").tag(letterGrade.D)
                            Text("E").tag(letterGrade.E)
                        }
                        Picker ("Select the type of class", selection: $typeFour){
                            Text("Essential").tag(typeClass.Essential)
                            Text("Regular").tag(typeClass.Regular)
                            Text("Honors").tag(typeClass.Honors)
                            Text("AP").tag(typeClass.AP)
                        }
                    }header: { //names this specific section
                        Text("Class 4 Info") // title for the section
                    }
                }
                if classFive {
                    Section{ //class 5
                        Picker ("Select your letter grade", selection: $letterFive){
                            Text("A").tag(letterGrade.A)
                            Text("B").tag(letterGrade.B)
                            Text("C").tag(letterGrade.C)
                            Text("D").tag(letterGrade.D)
                            Text("E").tag(letterGrade.E)
                        }
                        Picker ("Select the type of class", selection: $typeFive){
                            Text("Essential").tag(typeClass.Essential)
                            Text("Regular").tag(typeClass.Regular)
                            Text("Honors").tag(typeClass.Honors)
                            Text("AP").tag(typeClass.AP)
                        }
                    }header: { //names this specific section
                        Text("Class 5 Info") // title for the section
                    }
                }
                if classSix {
                    Section{ //class 6
                        Picker ("Select your letter grade", selection: $letterSix){
                            Text("A").tag(letterGrade.A)
                            Text("B").tag(letterGrade.B)
                            Text("C").tag(letterGrade.C)
                            Text("D").tag(letterGrade.D)
                            Text("E").tag(letterGrade.E)
                        }
                        Picker ("Select the type of class", selection: $typeSix){
                            Text("Essential").tag(typeClass.Essential)
                            Text("Regular").tag(typeClass.Regular)
                            Text("Honors").tag(typeClass.Honors)
                            Text("AP").tag(typeClass.AP)
                        }
                    }header: { //names this specific section
                        Text("Class 6 Info") // title for the section
                    }
                }
                if classSeven {
                    Section{ //class 7
                        Picker ("Select your letter grade", selection: $letterSeven){
                            Text("A").tag(letterGrade.A)
                            Text("B").tag(letterGrade.B)
                            Text("C").tag(letterGrade.C)
                            Text("D").tag(letterGrade.D)
                            Text("E").tag(letterGrade.E)
                        }
                        Picker ("Select the type of class", selection: $typeSeven){
                            Text("Essential").tag(typeClass.Essential)
                            Text("Regular").tag(typeClass.Regular)
                            Text("Honors").tag(typeClass.Honors)
                            Text("AP").tag(typeClass.AP)
                        }
                    }header: { //names this specific section
                        Text("Class 7 Info") // title for the section
                    }
                }
                if classEight {
                    Section{ //class 8
                        Picker ("Select your letter grade", selection: $letterEight){
                            Text("A").tag(letterGrade.A)
                            Text("B").tag(letterGrade.B)
                            Text("C").tag(letterGrade.C)
                            Text("D").tag(letterGrade.D)
                            Text("E").tag(letterGrade.E)
                        }
                        Picker ("Select the type of class", selection: $typeEight){
                            Text("Essential").tag(typeClass.Essential)
                            Text("Regular").tag(typeClass.Regular)
                            Text("Honors").tag(typeClass.Honors)
                            Text("AP").tag(typeClass.AP)
                        }
                    }header: { //names this specific section
                        Text("Class 8 Info") // title for the section
                    }
                }
                
                Section {
                    Text("Your final GPA is: \(finalGPA)")
                }
                
            }
            .navigationTitle("GPA Calculator")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
