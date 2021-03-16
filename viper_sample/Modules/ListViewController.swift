import UIKit
import TwitterKit

class ListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        let logInButton = TWTRLogInButton(logInCompletion: { session, error in
//            if session != nil {
//                print("signed in as \(session?.userName)");
//            } else {
//                print("error: \(error?.localizedDescription)");
//            }
//        })
//        logInButton.center = self.view.center
//        self.view.addSubview(logInButton)

        let client = TWTRAPIClient.withCurrentUser()

        client.requestEmail { email, error in
            if email != nil {
                print("signed in as ");
            } else {
                print("error: \(error?.localizedDescription)");
            }
        }

//        if TWTRTwitter.sharedInstance().sessionStore.hasLoggedInUsers() {
//            print("true")
//        } else {
//            // 3.認証開始
//            TWTRTwitter.sharedInstance().logIn(with: self, completion: { (session, error) in
//                if let sess = session {
//                    print("Signed in as \(sess.userName)")
//                    print("true")
//                } else {
//                    // 5.認証失敗
//                    print("login error: \(error!.localizedDescription)")
//                }
//            })
//        }
    }
}
