pragma solidity ^0.5.16;

contract Election {
    //Model a Candidate
    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }
    //Store accounts that have voted
    mapping(address => bool) public voters; 
    //Store Candidate
    /*
    Fetch Candidate
    在此合約中，mapping 是公開的（public 修飾符），這表示外部合約或 DApp（去中心化應用）
    可以直接訪問這個 mapping 並讀取候選人的信息，而不需要通過特殊的 getter 函數。
    */
    mapping(uint => Candidate) public candidates;
    /*
    Store Candidates Count
    紀錄候選人數量以便mapping能夠映射可能的ID
    */
    uint public candidatesCount;

    //vote event
    event votedEvent (
        uint indexed _candidateId
    );

    // Constructor
    constructor() public {
        addCandidate("Biden");
        addCandidate("Trump");
    }

    function addCandidate(string memory _name) private {
        candidatesCount++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0); //0為初始化票數
    }
    //everyone can vote so this function is public access
    function vote (uint _candidateId) public {
        // require that they haven't voted before
        require(!voters[msg.sender]);

        // require a valid candidate
        require(_candidateId > 0 && _candidateId <= candidatesCount);   

        //record that voter has voted
        voters[msg.sender] = true;

        //update candidate vote Count
        candidates[_candidateId].voteCount++;
        
        // trigger voted event
        emit votedEvent(_candidateId);
    }
}
