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
	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return 10
	}

	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		return UICollectionViewCell()
	}
}

// MARK: UICollectionViewDataSource
extension TasksViewController: UICollectionViewDelegate {
	func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {}
}

// MARK: UICollectionViewDelegateFlowLayout
extension TasksViewController: UICollectionViewDelegateFlowLayout {
	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
		return UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
	}

	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
		 let rect = view.frame.width - 36
		 return CGSize(width: rect, height: rect)
	 }
}
