import UIKit

final class TabBarViewController: UITabBarController {
	override func viewDidLoad() {
		super.viewDidLoad()
		configureViewControllers()
		tabBarController?.tabBar.barTintColor = UIColor.white
	}

	private func configureViewControllers() {
		let tasks = TasksViewController()
		let nav1 = templateNavigationController(image: Icons.Tab.tasks, rootViewController: tasks)

		let addTask = AddTaskViewController()
		let nav2 = templateNavigationController(image: Icons.Tab.addTask, rootViewController: addTask)

		let statictics = ViewController()
		let nav3 = templateNavigationController(image: Icons.Tab.statistics, rootViewController: statictics)

		viewControllers = [nav1, nav2, nav3]
	}

	private func templateNavigationController(
		image: UIImage?,
		rootViewController: UIViewController
	) -> UINavigationController {
		let nav = UINavigationController(rootViewController: rootViewController)
		nav.tabBarItem.image = image
		nav.navigationBar.barTintColor = .white
		return nav
	}
}
