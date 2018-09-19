
local cfg = {}

-- paycheck and bill for users
cfg.message_paycheck = "Você recebeu seu salario: ~g~$" -- message that will show before payment of salary
cfg.message_bill = "Pagamento de contas: ~r~$" -- message that will show before payment of bill
cfg.post = "." -- message that will show after payment

cfg.bank = true -- if true money goes to bank, false goes to wallet

cfg.minutes_paycheck = 20 -- minutes between payment for paycheck
cfg.minutes_bill = 20 -- minutes between withdrawal for bill

cfg.paycheck_title_picture = "Banco do Brasil" -- define title for paycheck notification picture
cfg.paycheck_picture = "CHAR_BANK_MAZE" -- define paycheck notification picture want's to display
cfg.bill_title_picture = "Compania de Seguro" -- define title for bill notification picture
cfg.bill_picture = "CHAR_MP_MORS_MUTUAL" -- define bill notification picture want's to display

cfg.paycheck = { -- ["permission"] = paycheck
  ["coronel.paycheck"] = 10000,
  ["tcel.paycheck"] = 9500,
  ["major.paycheck"] = 8700,
  ["cap.paycheck"] = 8000,
  ["sgt.paycheck"] = 6500,
  ["sd.paycheck"] = 5000,
  ["rec.paycheck"] = 4000,
  
  ["del.paycheck"] = 15000,
  ["agt.paycheck"] = 9000,
--[""] = 0,
  ["emergency.paycheck"] = 15000,
  ["taxi.paycheck"] = 5000,
  ["repair.paycheck"] = 5000,
  ["bankdriver.paycheck"] = 5000,
  ["diretorchefe.paycheck"] = 15000,
  ["delivery.paycheck"] = 4600
}

cfg.bill = { -- ["permission"] = withdrawal
}

return cfg

