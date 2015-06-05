enum CFO {
    BUKLOD("Buklod"), KADIWA("Kadiwa"), BINHI("Binhi")

    final String value

    CFO(String value){ this.value = value }

    @Override
    String toString(){ value }

    String getKey() { name() }
}
