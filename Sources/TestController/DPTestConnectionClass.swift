import Foundation
import UIKit

public class DPTestConnectionClass {
    public static func showDPController(in navigation: UINavigationController) {
        let controller = DPController()
        navigation.show(controller, sender: nil)
    }
}
