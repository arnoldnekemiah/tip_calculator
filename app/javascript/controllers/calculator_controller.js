
import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["bill", "customTip", "people", "tipAmount", "totalAmount"]
  
  connect() {
    this.selectedTip = 0
  }

  selectTip(event) {
    this.selectedTip = parseInt(event.currentTarget.dataset.tip)
    this.calculate()
  }

  customTipInput(event) {
    this.selectedTip = parseFloat(event.currentTarget.value)
    this.calculate()
  }

  calculate() {
    const bill = parseFloat(this.billTarget.value) || 0
    const people = parseInt(this.peopleTarget.value) || 1
    const tipPercent = this.selectedTip

    if (bill === 0 || people === 0) return

    fetch('/calculate', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        'X-CSRF-Token': document.querySelector('[name="csrf-token"]').content
      },
      body: JSON.stringify({ bill, tip: tipPercent, people })
    })
    .then(response => response.json())
    .then(data => {
      this.tipAmountTarget.textContent = `$${data.tip_amount}`
      this.totalAmountTarget.textContent = `$${data.total_per_person}`
    })
  }

  reset() {
    this.billTarget.value = ''
    this.customTipTarget.value = ''
    this.peopleTarget.value = ''
    this.tipAmountTarget.textContent = '$0.00'
    this.totalAmountTarget.textContent = '$0.00'
    this.selectedTip = 0
  }
}