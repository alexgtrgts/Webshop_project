package it;

/* Подключить к проекту jacoco plagin,checkstyle plagin написать тесты,
используя hibernate добавить Entity Address(id, city, street, house)
и People (id, name, sername, patronymic) из main добавить, прочесть изменить
и удалить данные в этих таблиц */


import entity.Address;
import entity.People;
import util.HibernateUtil;

import javax.persistence.EntityManager;

public class App {
    public static void main(String[] args) {
        Address ad = Address.builder()
                .city("Misnk")
                .street("Skryganova")
                .house("15")
                .build();
        Address ad1 = Address.builder()
                .city("Misnk")
                .street("Skryganova")
                .house("00")
                .build();
        Address ad2 = Address.builder()
                .city("Paris")
                .street("deGolle")
                .house("102")
                .build();
        People p = People.builder()
                .name("Igor")
                .surname("Tutov")
                .patronymic("Petrovich")
                .build();
        EntityManager em = HibernateUtil.getEntityManager();

        //добавление в базу
        em.getTransaction().begin();
        em.persist(ad);
        em.persist(ad1);
        em.persist(ad2);
        em.persist(p);
        em.getTransaction().commit();

        //прочитать из базы
        em.getTransaction().begin();
        System.out.println(em.find(Address.class, ad.getId()));
        System.out.println(em.find(People.class, p.getId()));
        em.getTransaction().commit();

        //изменить
        em.getTransaction().begin();
        Address ad3 = em.find(Address.class, 3);
        ad3.setCity("Kiev");
        em.merge(ad3);
        em.getTransaction().commit();

        //удалить
        em.getTransaction().begin();
        Address ad5 = em.find(Address.class, 3);
        em.remove(ad5);
        em.getTransaction().commit();

        em.close();
    }
}
