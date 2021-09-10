'use strict'

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use('Schema')

class ClienteProprietarioSchema extends Schema {
  up () {
    this.create('cliente_proprietarios', (table) => {
      table.increments()
      table.string('cpf_cliente_proprietario',14).primary().NotNullable().unique()
      table.string('nome_cliente_proprietario',50).NotNullable()
      table.string('telefone1_cliente_proprietario',12).NotNullable()
      table.string('telefone2_cliente_proprietario',12)
      table.string('email_cliente_proprietario',50).NotNullable()
      table.string('sexo_cliente_proprietario',1).NotNullable()
      table.string('estado_civil_cliente_proprietario',12).NotNullable()
      table.string('profissao_cliente_proprietario',30)
      table.timestamps()
    })
  }

  down () {
    this.drop('cliente_proprietarios')
  }
}

module.exports = ClienteProprietarioSchema
