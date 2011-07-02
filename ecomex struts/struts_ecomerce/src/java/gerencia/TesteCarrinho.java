package gerencia;

import dao.CarrinhoDAO;
import java.util.ArrayList;
import modelo.Carrinho;
import modelo.Produto;
import modelo.Usuario;

public class TesteCarrinho {

    public static void main(String[] args) {


        try {

            CarrinhoDAO carrinhoDao = new CarrinhoDAO();
            Carrinho carrinho = new Carrinho();
            Produto produto = new Produto();
            Usuario usuario = new Usuario();

            ArrayList<Produto> arrayProduto = new ArrayList<Produto>();

            usuario.setCod_user(1);
            produto.setCod_produto(1);

            carrinho.setUser(usuario);
            carrinho.setProduto(produto);

            //Cadastrando novo item no carrinho
            carrinhoDao.create(carrinho);

            //lendo Produtos do carrinho
            arrayProduto = (ArrayList<Produto>) carrinhoDao.read(1);
            System.out.println("Listando produtos encontrados:");
            for(Produto item : arrayProduto){
                System.out.println("Produto: " + item.getCod_produto());
            }

            //Excluindo Carrinho
            System.out.println("Excluindo produto");
            carrinhoDao.delete(carrinho);

        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}
