/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package gerencia;

import dao.ProdutoDAO;
import modelo.Categoria;
import modelo.Produto;

/**
 *
 * @author lab210
 */
public class TesteProduto {

    public static void main(String[] args) {
           try {
               ProdutoDAO produtoDAO = new ProdutoDAO();
               Produto produto = new Produto();
               Categoria categoria = new Categoria();
               categoria.setCod_cat(1);

               produto.setCod_produto(9);
               produto.setNome_prod("Tv");
               produto.setDescricao("descricao");
               produto.setPreco(1.89);
               produto.setCategoria(categoria);

               /* CADASTRANDO NOVO PRODUTO */
               System.out.println("--- CADASTRANDO NOVO PRODUTO");
               produtoDAO.create(produto);

               /* lendo produto */
               System.out.println("--- LENDO NOVO PRODUTO");
               Produto produtoRead = (Produto) produtoDAO.read(9);
               System.out.println("NOME DO PRODUTO: " + produtoRead.getNome_prod());

               /* Atualizando Produto */
               produto.setNome_prod("TV DIGITAL");
               produtoDAO.update(produto);

               /* lendo produto */
               System.out.println("--- LENDO NOVO PRODUTO");
               produtoRead = (Produto) produtoDAO.read(9);
               System.out.println("NOME DO PRODUTO: " + produtoRead.getNome_prod());
               
               /* Excluindo produto */
               System.out.println("--- EXCLUINDO NOVO PRODUTO");
               produtoDAO.delete(9);


        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
