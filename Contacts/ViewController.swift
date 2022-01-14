//
//  ViewController.swift
//  Contacts
//
//  Created by Артём Шилоносов on 13.01.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // осуществляем попытку загрузки переиспользуемой ячейки
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell") else {
            print("Создаем новую ячейку для строки с индексом \(indexPath.row)")
            // получаем экземпляр ячейки
            let newCell = UITableViewCell(style: .default, reuseIdentifier: "MyCell")
            // конфигурируем ячейку
            var configuration = newCell.defaultContentConfiguration()
            configuration.text = "Строка \(indexPath.row)"
            newCell.contentConfiguration = configuration
            return newCell
        }
        print("Используем старую ячейку для строки с индексом \(indexPath.row)")
        // возвращаем сконфигурированный экземпляр ячейки
        return cell
    }
}
