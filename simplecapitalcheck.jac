import from byllm.llm {Model}
glob llm = Model(
    model_name = "ollama/llama2:latest",
    provider   = "openai",
    
);


obj Country {
    # Name and Vlan
    has name: str;
    has capital: str;

    
    # 
}
def capitalcity(name: str ) -> str by llm();
    

with entry {
    # Create a branch record
        name="Kenya";
        result=capitalcity(name);
        print(f"The Capital for {name} seems to be {result}");

}
