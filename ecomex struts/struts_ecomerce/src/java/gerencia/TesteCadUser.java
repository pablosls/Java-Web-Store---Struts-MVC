package gerencia;

import dao.UsuarioDAO;
import modelo.Usuario;

public class TesteCadUser {

    public static void main(String[] args) {
        try {
            
            UsuarioDAO userDao = new UsuarioDAO();

            //Cadastrar novo usuario
            Usuario user = new Usuario();
            user.setCod_user(5);
            user.setLogin("jose123");
            user.setSenha("123456");
            user.setNome("Jose da Silva");
            user.setEmail("Jose@Jose.com");
            user.setSexo("H");
            user.setEndereco("rua do jose ");
            user.setCidade("city Jose");
            user.setEstado("SP");
            user.setTel("2122112");
            user.setTipo_user(1);
            user.setStatus(1);

            userDao.create(user);

            //read o usuario cadastrado

            System.out.println("--- Leitura dados Usuario");
            Usuario userRead = (Usuario) userDao.read(user.getCod_user());
            System.out.println("Nome: " + userRead.getNome());

            //update

            System.out.println("--- Update Nome do Usuario");

            user.setNome("Jose Carlos Macoratti");
            userDao.update(user);

            System.out.println("--- Apos Atualizacao");
            userRead.setCod_user(5);
            userRead = (Usuario) userDao.read(userRead.getCod_user());
            System.out.println("Read nome: " + userRead.getNome());


            System.out.println("--- Excluindo Usuario");
            userDao.delete(user);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
