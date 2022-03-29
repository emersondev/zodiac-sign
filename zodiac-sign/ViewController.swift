//
//  ViewController.swift
//  zodiac-sign
//
//  Created by Emerson.Novais on 27/03/22.
//

import UIKit

class ViewController: UITableViewController {
    
    let signs = ["Áries", "Touro", "Gêmeos", "Câncer", "Leão", "Virgem", "Libra", "Escorpião", "Sagitário", "Capricórnio", "Aquário", "Aquário"]
    var characteristics: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        characteristics.append("se coloca em primeiro lugar, mas sem esquecer dos demais à sua volta! Motiva as pessoas e é prestativo, além de perseverante e apaixonado")
        characteristics.append("cuidadoso com tudo e com todos, é paciente e produtivo. Desse modo, são pessoas em que se podem confiar e costumam ser muito fiéis")
        characteristics.append("animados e comunicativos, eles tem a mente aberta e são muito espertos")
        characteristics.append("são dedicados e gentis, sempre ouvindo ou cuidando de alguém por perceberam suas emoções e problemas")
        characteristics.append("inteligentes e corajosos, são líderes natos. Por outro lado, são expressivos e determinados: quando colocam algo na mente, pode ter certeza que vão até o fim para conquistá-la")
        characteristics.append("observação e eficiência são marcas do virginiano, que é bastante atencioso e sincero com os demais e está sempre resolvendo um problema: seja seu ou dos outros")
        characteristics.append("extremamente diplomáticos, são sinceros e buscam ponderar sempre para chegar no melhor resultado. Para isso contam com sua simpatia, boa comunicação e tranquilidade")
        characteristics.append("de uma auto-confiança invejável (a não ser pelos leoninos…rs), têm muita intuição e um instinto protetor maravilhoso. São dedicados e apaixonados")
        characteristics.append("são talentosos, inteligentes e justos. São pessoas estimulantes, que gostam de se divertir e têm bastante espontaneidade e vitalidade")
        characteristics.append("são persistentes e determinados. Sua organização e ambição natas fazem com que sejam muito eficientes e trabalhadores")
        characteristics.append("idealista e inventivo, o aquariano costuma ser tranquilo e justo, ao mesmo tempo que gosta de transformar e não se acomodar nas situações")
        characteristics.append("ouvintes natos, são confiáveis, intuitivos, prestativos e preocupados com os demais. São adaptáveis e simpáticos, os tornando bem sociáveis")
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return signs.count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let alertController = UIAlertController(title: "Caracteristicas do Signo", message: characteristics[indexPath.row], preferredStyle: .alert)
        let confirmation = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(confirmation)
        
        present(alertController, animated: true, completion: nil)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = "cellReuse"
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = signs[indexPath.row]
        cell.contentConfiguration = content
        return cell
    }

}

