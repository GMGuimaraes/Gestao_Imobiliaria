'use strict'

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use('Schema')

class FormaDePagamentoSchema extends Schema {
  up () {
    this.create('forma_de_pagamentos', (table) => {
      table.increments()
      table.integer('id_forma_pagamento').primary().unsigned().notNullable().unique()
      table.string('descricao_forma_pagamento',30).notNullable()
      table.timestamps()
    })
  }

  down () {
    this.drop('forma_de_pagamentos')
  }
}

module.exports = FormaDePagamentoSchema
