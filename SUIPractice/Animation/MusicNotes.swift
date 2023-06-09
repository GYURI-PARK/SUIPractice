//
//  MusicNotes.swift
//  SUIPractice
//
//  Created by GYURI PARK on 2023/04/09.
//

import AVFoundation
import SwiftUI

struct MusicNotes: View {
    
    // Initial animation state
    @State private var ejectingMusicNote = false
    @State private var ejectingMusicNoteList = false
    @State private var quarterMusicNote = false
    
    var body: some View {
        // Music note icons
        ZStack {
            Image(systemName: "music.quarternote.3")
                .opacity(quarterMusicNote ? 0 : 1)
                .offset(y: quarterMusicNote ? -600: 0)
                .rotationEffect(.degrees(quarterMusicNote ? -15 : 15), anchor: quarterMusicNote ? .bottomLeading : .bottomTrailing)
            
            Image(systemName: "music.note.list")
                .opacity(ejectingMusicNoteList ? 0 : 1)
                .offset(y: ejectingMusicNoteList ? -600: 0)
                .rotationEffect(.degrees(ejectingMusicNoteList ? -15 : 15), anchor: ejectingMusicNoteList ? .leading : .trailing)
            
            Image(systemName: "music.note")
                .opacity(ejectingMusicNote ? 0 : 1)
                .offset(y: ejectingMusicNote ? -600: 0)
                .rotationEffect(.degrees(ejectingMusicNote ? -15 : 15), anchor: ejectingMusicNote ? .topLeading : .topTrailing)
        }
        .onAppear{
           
            withAnimation(.easeOut(duration: 5).repeatForever(autoreverses: false)) {
                ejectingMusicNote.toggle()
            }
            
            withAnimation(.easeInOut(duration: 5).repeatForever(autoreverses: false)) {
                ejectingMusicNoteList.toggle()
            }
            
            withAnimation(.easeIn(duration: 5).repeatForever(autoreverses: false)) {
                quarterMusicNote.toggle()
            }
        }
    }
}

struct MusicNotes_Previews: PreviewProvider {
    static var previews: some View {
        MusicNotes()
            .preferredColorScheme(.dark)
    }
}
