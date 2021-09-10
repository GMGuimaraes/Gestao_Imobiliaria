'use strict'

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use('Schema')

class FiadorSchema extends Schema {
  up () {
    this.create('fiadors', (table) => {
      table.increments()
      table.string('cpf_fiador',14).NotNullable().unique()
      .references('cpf_cliente_usuarioa').inTable('cliente_usuario')
      table.string('nome_fiador',50).NotNullable()
      table.timestamps()
    })
  }

  down () {
    this.drop('fiadors')
  }
}

module.exports = FiadorSchema
