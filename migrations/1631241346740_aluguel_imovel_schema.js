'use strict'

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use('Schema')

class AluguelImovelSchema extends Schema {
  up () {
    this.create('aluguel_imovels', (table) => {
      table.increments()
      table.integer('id_aluguel_imovel').primary().unsigned().notNullable().unique()
      table.integer('id_imovel_aluguel').unsigned().notNullable().references('id').inTable('imovel_schema')
      table.string('id_cliente_aluguel', 14).notNullable() /*colocar os atributos da tabela do cliente*/
      table.integer('id_funcionario_aluguel').notNullable() /*colocar os atributos da tabela do funcionário*/
      table.date('data_anuncio_aluguel').notNullable()
      table.float('preco_sugerido_aluguel', 20, 2).unsigned().notNullable()
      table.float('valor_aluguel', 20, 2).notNullable().unsigned()
      table.float('parte_aluguel_imobiliaria', 20, 2).notNullable().unsigned()
      table.float('comissao_funcionario_aluguel', 20, 2).notNullable().unsigned()
      table.date('data_transacao_aluguel').notNullable()
      table.integer('num_contrato_aluguel').unsigned().notNullable()
      table.integer('forma_pagamento_aluguel').unsigned().notNullable()/*colocar os atributos da tabela de forma de pagamento*/
      table.timestamps()
    })
  }

  down () {
    this.drop('aluguel_imovels')
  }
}

module.exports = AluguelImovelSchema
