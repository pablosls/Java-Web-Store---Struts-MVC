package gerencia;

import dao.ContatoDAO;
import modelo.Contato;

public class TesteContato {

    public static void main(String[] args) {

        try {


            ContatoDAO contatoDAO = new ContatoDAO();

            /*Cadastrar nova mensagem de Contato*/

            Contato contato = new Contato();

            contato.setCod_contato(1);
            contato.setNome("Ana Paula");
            contato.setIdade(24);
            contato.setTel("848484848");
            contato.setMensagem("UhuLLLLLLLLLLLLL");

            contatoDAO.create(contato);

            //READ mensagem cadastrada
            Contato readContato = (Contato) contatoDAO.read(1);
            System.out.println("CODIGO: " + readContato.getCod_contato() + " NOME: " + readContato.getNome() + " MENSAGEM: " + readContato.getMensagem());

            //Update
            contato.setNome("Ana Paula Araujo");
            contatoDAO.update(contato);

            //READ apos update
            readContato = (Contato) contatoDAO.read(1);
            System.out.println("CODIGO: " + readContato.getCod_contato() + " NOME: " + readContato.getNome() + " MENSAGEM: " + readContato.getMensagem());

            //DELETAR mensagem de contato
            contatoDAO.delete(contato);


        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
