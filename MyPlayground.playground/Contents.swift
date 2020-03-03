import UIKit
import PlaygroundSupport

class ViewController: UIViewController {

    let topView : UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.orange
        return view
    }()

    let bottomView : UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.purple
        return view
    }()

    override func viewDidLoad(){
        super.viewDidLoad()
        bottomView.frame = CGRect(x: self.view.frame.size.width/2-25, y: self.view.frame.size.height, width: 50, height: 50)
        self.view.addSubview(bottomView)

        topView.frame = CGRect(x: self.view.frame.size.width/2-25, y: -50, width: 50, height: 50)
        self.view.addSubview(topView)

        
        UIView.animate(withDuration: 0.5, delay: 0.5,usingSpringWithDamping: 0.5,initialSpringVelocity: 0.0, options: [.repeat,.autoreverse], animations:{
            self.bottomView.center.y -= 300
            self.bottomView.backgroundColor = UIColor.orange

        }, completion: { (finished: Bool) in
            UIView.animate(withDuration: 1.5) {
                self.topView.center.y += 300
                self.topView.backgroundColor = UIColor.purple
            }
        })

    }
}

let master = ViewController()
PlaygroundPage.current.liveView = master

