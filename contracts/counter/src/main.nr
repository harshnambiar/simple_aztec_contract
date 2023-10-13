

contract Counter {
    use dep::std::option::Option;
    
    use dep::aztec::context::{PrivateContext, PublicContext, Context};
        
       
    use dep::aztec::types::type_serialization::field_serialization::{
            FieldSerializationMethods, FIELD_SERIALIZED_LEN};
        
    use dep::aztec::selector::compute_selector;

    use dep::aztec::state_vars::{public_state::PublicState};
        
    

    
     
    struct Storage {
        counter: PublicState<Field, FIELD_SERIALIZED_LEN>,
        
        
        
    }

    impl Storage {
        fn init(context: Context) -> pub Self {
            Storage {
                counter: PublicState::new(context, 1, FieldSerializationMethods),
                
                

                
               
            }
        }
    }

    #[aztec(private)]
    fn constructor( 
       
    )  {
        let selector = compute_selector("_init()");
        context.call_public_function(context.this_address(), selector, []);
             
        
        
    }

    #[aztec(public)]
    internal fn _init() {
        
        storage.counter.write(0);
    }

    // Mints nft with said specifications and assigns ownership to owner
    #[aztec(public)]
    fn increment( 
        
    )  {
        
        let new_size = storage.counter.read() + 1;
        storage.counter.write(new_size);

 

        
    }

    


    unconstrained fn getCounter(
        
    ) -> Field {
        
        let c = storage.counter.read();
        c
        
        
    }


    
}
