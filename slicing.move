        // background over-network quest in overmind, to get the global timeline I preferd to use some slicing method with trim, 

        //I am looking for it to return a vector of vectors, each sub vector having a length of size if possible if not less than size the vector needs to be indexed since they represent a global timeline, and the index will be the page we are looking for 
        

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
