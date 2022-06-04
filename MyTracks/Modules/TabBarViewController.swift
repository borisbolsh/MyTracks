import UIKit

final class TabBarViewController: UITabBarController {
		override func viewDidLoad() {
				super.viewDidLoad()
		}

		private func generateViewController(
				rootViewController: UIViewController,
				image: UIImage,
				title: String
		) -> UIViewController {
				let navigationVC = UINavigationController(rootViewController: rootViewController)
				navigationVC.tabBarItem.image = image
				navigationVC.tabBarItem.title = title
				rootViewController.navigationItem.title = title
				navigationVC.navigationBar.prefersLargeTitles = true
				return navigationVC
		}
}
