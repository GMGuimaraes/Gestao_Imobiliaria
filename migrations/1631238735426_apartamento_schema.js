'use strict'

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use('Schema')

class ApartamentoSchema extends Schema {
  up () {
    this.create('apartamentos', (table) => {
      table.increments()
      table.integer('id_apartamento').primary().unsigned().notNullable().unique()
      table.integer('qtde_quartos_ap').notNullable().unsigned()
      table.integer('qtde_suites_ap').notNullable().unsigned()
      table.integer('qtde_sala_estar_ap').notNullable().unsigned()
      table.integer('qtde_sala_jantar_ap').notNullable().unsigned()
      table.integer('qtde_vaga_garagem_ap').notNullable().unsigned()
      table.float('area_ap', 10, 2).unsigned().notNullable()
      table.string('armario_embutido', 3).notNullable()
      table.integer('andar_ap').unsigned().notNullable()
      table.float('condominio_valor', 30, 2).unsigned().notNullable()
      table.string('portaria_ap', 3).notNullable()
      table.string('descricao_ap', 300).nullable()
      table.integer('id_imovel_cat_FK').unsigned().notNullable().references('id').inTable('imovel_schema')
      table.timestamps()
    })
  }

  down () {
    this.drop('apartamentos')
  }
}

module.exports = ApartamentoSchema
