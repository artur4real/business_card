from PyQt5 import QtWidgets
from design import Ui_Dialog

class PriceCalculator(QtWidgets.QDialog):
    def __init__(self):
        super().__init__()

        self.ui = Ui_Dialog()
        self.ui.setupUi(self)

        # Словарь для хранения цен на различные опции
        self.price_dict = {
            self.ui.radioButton: 10.00,
            self.ui.radioButton_2: 20.00,
            self.ui.radioButton_3: 400.00,
            self.ui.radioButton_4: 800.00,
            self.ui.radioButton_5: 300.00,
            self.ui.radioButton_6: 400.00,
            self.ui.radioButton_7: 0.00,
            self.ui.radioButton_8: 200.00,
            self.ui.radioButton_9: 400.00,
            self.ui.radioButton_10: 800.00,
            self.ui.radioButton_11: 100.00,
            self.ui.radioButton_13: 0.00,
            self.ui.radioButton_14: 400.00,
            self.ui.radioButton_15: 300.00,
            self.ui.radioButton_16: 70.00,
            self.ui.radioButton_17: 500.00,
            self.ui.radioButton_18: 900.00,
            self.ui.radioButton_19: 0.00,
            self.ui.radioButton_20: 150.00,
            self.ui.radioButton_25: 0.00,
            self.ui.radioButton_26: 0.00,
            self.ui.radioButton_27: 0.00,
            self.ui.radioButton_28: 0.00,
            self.ui.radioButton_29: 500.00,
            self.ui.radioButton_30: 1000.00,
            self.ui.radioButton_36: 0.00,
            self.ui.radioButton_37: 1000.00,
            self.ui.radioButton_38: 5000.00,
            self.ui.radioButton_39: 10000.00,
            self.ui.radioButton_40: 20000.00,
            self.ui.radioButton_41: 30000.00,
            self.ui.radioButton_42: 50000.00,
            self.ui.radioButton_43: 100000.00,
            self.ui.radioButton_44: 200000.00,

        }

        # Привязываем обработчики к событию изменения состояния RadioButton
        for radio_button in self.price_dict.keys():
            radio_button.clicked.connect(self.update_total_price)

        # Обновляем итоговую сумму при запуске программы
        self.update_total_price()

        # Привязываем кнопку "Продолжить" к соответствующей функции
        self.ui.pushButton_2.clicked.connect(self.continue_button_clicked)

    def update_total_price(self):
        # Пересчитываем итоговую сумму при изменении состояния каждого RadioButton
        total_price = sum(self.price_dict[rb] for rb in self.price_dict.keys() if rb.isChecked())
        self.ui.label_16.setText(f"{total_price:.2f} ₽")

    def continue_button_clicked(self):
        total_price_str = self.ui.label_16.text().split(' ')[0]
        total_price = float(total_price_str)
        print(f"Продолжение с итоговой суммой: {total_price:.2f} ₽")


if __name__ == "__main__":
    import sys
    app = QtWidgets.QApplication(sys.argv)
    calculator = PriceCalculator()
    calculator.show()
    sys.exit(app.exec_())
