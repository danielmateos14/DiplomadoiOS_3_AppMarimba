//
//  Reproducir.swift
//  TerceraAppMarimba
//
//  Created by djdenielb on 07/04/22.
//

import Foundation
import AVFoundation

//Creamos una variable para que contendra el sonido que queremos se crea como optional

struct Reproductor{
var marimba:  AVAudioPlayer?

    mutating func reproducir(notaMusical: String){
    guard let url = Bundle.main.url(forResource: notaMusical, withExtension: "mp3") else{return}

    do{
        try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
        try AVAudioSession.sharedInstance().setActive(true)

        marimba = try AVAudioPlayer(contentsOf: url,fileTypeHint: AVFileType.mp3.rawValue)
        marimba?.play()
    }catch let error{
        print(error.localizedDescription)
    }
}
}
