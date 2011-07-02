package gerencia;

import dao.CategoriaDAO;
import modelo.Categoria;

public class TesteCategoria {

    public static void main(String[] args) {
        try {
            CategoriaDAO categoriaDAO = new CategoriaDAO();
            Categoria categoria = new Categoria();

            categoria.setCod_cat(6);
            categoria.setNome_cat("Informatica");

            /* Cadastrar Categoria */
            categoriaDAO.create(categoria);

            /* READ */
            Categoria catRead = (Categoria) categoriaDAO.read(6);
            System.out.println("Categoria Cadastrada: " + catRead.getNome_cat());

            /* UPDATE */
            categoria.setNome_cat("Celulares");
            categoriaDAO.update(categoria);

            /* READ APOS ATUALIZACAO */
            catRead = (Categoria) categoriaDAO.read(6);
            System.out.println("Categoria: " + catRead.getNome_cat());

            /* DEleTE */
            categoriaDAO.delete(categoria);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
