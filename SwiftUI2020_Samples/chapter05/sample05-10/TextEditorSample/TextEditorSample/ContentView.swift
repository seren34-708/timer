//
//  ContentView.swift
//  TextEditorSample
//
//  Created by yoshiyuki oshige on 2020/09/01.
//

import SwiftUI

struct ContentView: View {
    @State private var theText: String = """
春はあけぼの。やうやう白くなり行く、山ぎは少しあかりて、紫だちたる雲の細くたなびきたる。
夏は夜。月のころはさらなり。やみもなほ、ほたるの多く飛びちがひたる。また、ただ一つ二つなど、ほのかにうち光りて行くもをかし。雨など降るもをかし。
秋は夕暮。夕日のさして山の端いと近うなりたるに、烏の寝どころへ行くとて、三つ四つ、二つ三つなど飛びいそぐさへあはれなり。まいて雁などのつらねたるが、いと小さく見ゆるはいとをかし。日入りはてて、風の音、虫の音など、はたいふべきにあらず。
冬はつとめて。雪の降りたるはいふべきにもあらず。霜のいと白きも、またさらでも、いと寒きに、火などいそぎおこして、炭もてわたるもいとつきづきし。昼になりて、ぬるくゆるびもて行けば、火桶の火も白き灰がちになりてわろし。
"""

    var body: some View {
        TextEditor(text: $theText)
            .lineSpacing(10)
            .border(Color.gray)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
