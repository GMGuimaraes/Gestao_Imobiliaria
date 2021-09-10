'use strict'

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use('Schema')

class ClienteUsuarioSchema extends Schema {
  up () {
    this.create('cliente_usuarios', (table) => {
      table.increments()
      table.string('cpf_cliente_usuario',14).primary().NotNullable().unique()
      table.string('nome_cliente_usuario',50).NotNullable()
      table.string('telefone1_cliente_usuario',12).NotNullable()
      table.string('telefone2_cliente_usuario',12)
      table.string('sexo_cliente_usuario',1).NotNullable()
      table.string('estado_civil_cliente_usuario',12).NotNullable()
      table.string('profissao_cliente_usuario',30)
      table.timestamps()
    })
  }

  down () {
    this.drop('cliente_usuarios')
  }
}

module.exports = ClienteUsuarioSchema
