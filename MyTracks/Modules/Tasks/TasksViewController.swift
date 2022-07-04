import UIKit

final class TasksViewController: UIViewController {
	private lazy var collectionView = UICollectionView()

	override func viewDidLoad() {
		super.viewDidLoad()

		view.backgroundColor = .bgc
		setupSubviews()
		configureCollectionView()
	}

	private func setupSubviews() {}

	private func configureCollectionView() {
		let collectionViewLayout = UICollectionViewFlowLayout()
		self.collectionView = UICollectionView(frame: .zero, collectionViewLayout: collectionViewLayout)

		collectionView.frame = view.bounds

		view.addSubview(collectionView)
		collectionView.dataSource = self
		collectionView.delegate = self
		collectionView.collectionViewLayout = UICollectionViewFlowLayout()
	}
}

// MARK: UICollectionViewDataSource
extension TasksViewController: UICollectionViewDataSource {
}

// MARK: UICollectionViewDataSource
extension TasksViewController: UICollectionViewDataSource {
	func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {}
}

// MARK: UICollectionViewDelegateFlowLayout
extension TasksViewController: UICollectionViewDelegateFlowLayout {

}
