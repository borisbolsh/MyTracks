import UIKit

final class TabBarViewController: UITabBarController {
	override func viewDidLoad() {
		super.viewDidLoad()
		configureViewControllers()
		tabBar.barTintColor = .white
		tabBar.isTranslucent = false
	}

	private func configureViewControllers() {
		let tasks = TasksViewController()
		let nav1 = templateNavigationController(image: Icons.Tab.tasks,
																						title: Localization.TabTitles.tasks,
																						rootViewController: tasks)

		let addTask = AddTaskViewController()
		let nav2 = templateNavigationController(image: Icons.Tab.addTask,
																						title: Localization.TabTitles.addTask,
																						rootViewController: addTask)

		let statictics = StaticticsViewController()
		let nav3 = templateNavigationController(image: Icons.Tab.statistics,
																						title: Localization.TabTitles.statistics,
																						rootViewController: statictics)

		viewControllers = [nav1, nav2, nav3]
	}

	private func templateNavigationController(
		image: UIImage?,
		title: String?,
		rootViewController: UIViewController
	) -> UINavigationController {
		let nav = UINavigationController(rootViewController: rootViewController)
		nav.tabBarItem.image = image
		nav.tabBarItem.title = title
		nav.navigationBar.prefersLargeTitles = true
		rootViewController.navigationItem.title = title
		return nav
	}
}
