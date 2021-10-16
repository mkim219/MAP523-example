
import UIKit

class CounterViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    //datasource for pickerview
    let groceryItems = ["bread", "milk", "paper", "water"]
    @IBOutlet weak var lblResult: UILabel!
    
    //total number of itmes in the pickerView
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return groceryItems.count
    }
    
    // what shoudl acutally be displayed in the pickerview
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return groceryItems[row]
    }
    
    
    // number of column in the pickerview
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        // 1 column = month
        // 1 column = day
        return 1
    }
    
    

    // this function runs when the screen is loaded
    override func viewDidLoad() {
        super.viewDidLoad()
        self.pickerView.delegate = self
        self.pickerView.dataSource = self

    }
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    //action
    @IBAction func orderButtonPressed(_ sender: Any) {
        // the value of inComponent is column
        let selectedIndex = self.pickerView.selectedRow(inComponent: 0)
        lblResult.text = groceryItems[selectedIndex]
    }
    
    
    
}
