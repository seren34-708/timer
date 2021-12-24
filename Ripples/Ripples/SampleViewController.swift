//
//  UIScrollView.swift
//  Ripples
//
//  Created by matuda naoya on 2021/10/01.
//

import Foundation
import SwiftUI
import UIKit

extension UIScrollView {
    override open func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.superview?.touchesBegan(touches, with: event)
        print("touches began")
        //タッチされているオブジェクトを view で取得
        guard let touchEvent = touches.first, let view = touchEvent.view else{
            return
        }
        //viewがスクロールビューだったらスクロールON,それ以外ならOFF
        if view is UIScrollView{
            self.isScrollEnabled = true
            }else{
                self.isScrollEnabled = false
            }
    }
    
    override open func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.superview?.touchesMoved(touches, with: event)
        print("touches moved")
        //タッチされているオブジェクトを view で取得
        guard let touchEvent = touches.first, let view = touchEvent.view else{
            return
        }
        //viewがスクロールビュー以外だったら動かす
        if view != self{
            view.center = touchEvent.location(in: self)
        }
        
    }
    
    override open func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.superview?.touchesEnded(touches, with: event)
        print("touches ended")
        self.isScrollEnabled = true
    }
}

struct UIScrollView_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
