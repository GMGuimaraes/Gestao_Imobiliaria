'use strict'

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use('Schema')

class IndicacaoSchema extends Schema {
  up () {
    this.create('indicacaos', (table) => {
      table.increments()
      table.string('cpf_indicacao',14).NotNullable().unique()
      .references('cpf_cliente_usuarioa').inTable('cliente_usuario')
      table.string('nome_indicacao',50).NotNullable()
      table.timestamps()
    })
  }

  down () {
    this.drop('indicacaos')
  }
}

module.exports = IndicacaoSchema
