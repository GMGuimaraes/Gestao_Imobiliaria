'use strict'

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use('Schema')

class FuncionarioSchema extends Schema {
  up () {
    this.create('funcionarios', (table) => {
      table.increments()
      table.integer('id_funcionario').primary().unsigned().notNullable().unique()
      table.float('comissao_funcionario', 30, 2).unsigned().notNullable()
      table.string('nome_funcionario',50).notNullable()
      table.string('cpf_indicacao',14).primary().NotNullable().unique()
      table.string('telefone_contato_funcionario',12).NotNullable()
      table.string('telefone_celular_funcionario',12)
      table.date('data_ingresso_imobiliaria_funcionario').notNullable()
      table.integer('id_cargo_funcionario').unsigned().notNullable()
      .references('id_cargos_imobiliaria').inTable('cargos_imobiliaria')
      table.float('salario_funcionario', 30, 2).unsigned().notNullable()
      table.string('nome_funcionario',50).notNullable()
      table.string('cpf_indicacao',14).primary().NotNullable().unique()
      table.string('nome_login',30).notNullable().unique()
      table.string('cpf_senha',128).NotNullable().unique()
      table.timestamps()
    })
  }

  down () {
    this.drop('funcionarios')
  }
}

module.exports = FuncionarioSchema
