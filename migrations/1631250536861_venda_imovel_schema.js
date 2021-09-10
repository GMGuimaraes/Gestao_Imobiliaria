'use strict'

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use('Schema')

class VendaImovelSchema extends Schema {
  up () {
    this.create('venda_imovels', (table) => {
      table.increments()
      table.integer('id_op_venda_imovel').primary().unsigned().notNullable().unique()
      table.integer('id_imovel_venda').unsigned().notNullable()
      .references('id_imovel').inTable('imovel')
      table.string('id_cliente_venda',14).notNullable()
      .references('cpf_cliente_proprietario').inTable('cliente_proprietario')
      table.integer('id_funcionario_venda').unsigned().notNullable()
      .references('id_funcionario').inTable('funcionario')
      table.float('preco_sugerido_venda', 30, 2).unsigned().notNullable()
      table.float('valor_venda', 30, 2).unsigned().notNullable()
      table.float('parte_imobiliaria_venda', 30, 2).unsigned().notNullable()
      table.date('data_anuncio_venda').notNullable()
      table.integer('forma_pagamento_venda').unsigned().notNullable()
      .references('id_forma_de_pagamento').inTable('forma_de_pagamento')
      table.timestamps()
    })
  }

  down () {
    this.drop('venda_imovels')
  }
}

module.exports = VendaImovelSchema
