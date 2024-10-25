import UIKit
import SnapKit

class QuickStartViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
        let label = UILabel().with {
            $0.text = "Hello"
            $0.backgroundColor = .systemBlue
        }
        
        view.addSubview(label){
            $0.center.equalToSuperview()
        }
    }
}
