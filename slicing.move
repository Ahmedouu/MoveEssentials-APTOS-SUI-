      // vector slicing in move
     //I am looking for it to return a an indexed vector of vectors, at each index the vector will have a length of "size" if possible if not less than size the vector needs to be indexed since they represent a global timeline, and the index will be the page we are looking for 
        

        let test_vector = vector::empty<vector<bool>>();

        let truth_vec = vector[true, true, false, true, false];
        let size = 2;
        let length = vector::length(&truth_vec);
        while (k < vector::length(&truth_vec)){
            
            std::debug::print(&length);
            if ( length > size){
            let temp = vector::trim<bool>(&mut truth_vec, size);
            std::debug::print(&temp); if (vector::length(&temp) < size ){ vector::push_back(&mut test_vector, temp)};
            std::debug::print(&truth_vec);
            vector::insert(&mut test_vector, k, truth_vec);
            truth_vec = temp;
            length = length - size;
            }
            else {                              
              std::debug::print(&std::string::utf8(b"you are out line"));

            };
            k = k + 1;

        };
      let return_vector = vector::borrow(&test_vector, page_index)

//we can also do this, suppose truth vec is now repersented by originalVec, what is cool here is that we don't need to create a vector of vectors but instead push the values of originalVec to another vector of the same type,
//Still need to see if there is a way to do this in place without creating any extra vector in move, but this will use page_index and page_size directly to push only the desired elements to our return vector, originalVec will be passed as input 
       
 let return_vector = vector::empty<T>();
        let start = (page_index * page_size);
        let end = (page_index + 1) * page_size - 1;
        let i = start;
        while (i <= end){
            if (i < vector::length(&originalVec)){
            let temp = vector::borrow(&originalVec, i);
            vector::push_back(&mut return_vector, *temp);};
            i = i + 1;
        };
