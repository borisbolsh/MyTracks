import UIKit

final class ViewController: UIViewController {
		override func viewDidLoad() {
				super.viewDidLoad()
				view.backgroundColor = .black

				let label = UILabel()
				label.text = "Hello World"
				label.textColor = .white
				label.font = UIFont.systemFont(ofSize: 32.0)
				label.translatesAutoresizingMaskIntoConstraints = false
				view.addSubview(label)

				NSLayoutConstraint.activate([
						label.centerYAnchor.constraint(equalTo: view.centerYAnchor),
						label.centerXAnchor.constraint(equalTo: view.centerXAnchor)
				])


		}
}
