# Akashic

## Deployment
You'll need to setup a classic Personal access token in GitHub to get access to the GitHub Container Registry.
https://github.com/settings/tokens
Permissions needed: write:packages; read:packages
Test it:

`echo $PAT | docker login ghcr.io -u USERNAME --password-stdin`

Name this `KAMAL_REGISTRY_PASSWORD` in your .env file.





# Akashic Roadmap
## Introduction

The world is currently witnessing the highest levels of displacement on record. The stories and experiences of the dispossessed, particularly refugees, are often lost, untold, or forgotten, creating a void in our collective memory and understanding of these crises. Akashic aims to address this issue by providing a digital sanctuary for the oppressed and dispossessed to share their stories and be remembered.

## Project Overview

Akashic is a groundbreaking initiative that seeks to create a digital archive to permanently store, preserve, and organize memories, stories, and cultural knowledge of refugees. By leveraging the power of decentralized storage solutions like IPFS and Filecoin, Akashic will ensure that these narratives remain accessible, immutable, and resistant to censorship. This project aligns with Filecoin's mission to become a public record for humanity, by enshrining the stories of the most vulnerable cultures and populations on earth.

## Benefits

Akashic will provide numerous benefits to refugees, researchers, policymakers, and society as a whole:

1. **Empowerment**: Refugees will have a platform to share their experiences, ensuring their voices are heard and their stories are not forgotten.
2. **Preservation**: The use of decentralized storage will ensure that these narratives are preserved for future generations, even in the face of political instability or censorship attempts.
3. **Empathy and Understanding**: By presenting these narratives, Akashic fosters empathy and understanding, humanizing statistics and abstract concepts, informing more effective and compassionate responses to refugee crises.
4. **Cultural Heritage**: Akashic will serve as a repository for the cultural heritage of displaced communities, helping to maintain their identity and connection to their roots.

## Functionality and Features

Akashic will offer a range of features to facilitate the collection, curation, and presentation of refugee stories:

1. **Story Submission**: Contributors can submit stories anonymously or self-identified, along with geolocation data. The platform will accept a wide range of media formats, including audio, video, and written accounts.
2. **Story Curation**: Submitted stories will undergo a two-step process of filtering and curation into thematic collections. Professional staff and reputation-based groups will ensure the selection of compelling, high-quality content.
3. **Story Exhibition**: Curated collections will be transformed into immersive exhibitions, with each story represented as an on-chain NFT or hypercert. Patrons can explore these exhibitions in 3D gallery spaces and contribute to the works by purchasing a portion of the hypercert.
4. **Partnerships**: Akashic will collaborate with organizations like the Internet Archive for long-term preservation, MonaVerse for creating virtual exhibition spaces, and Artizen for tokenization and provenance tracking of exhibited works.

## Technology

Akashic will be built on a robust technical infrastructure:

1. **IPFS and Filecoin**: Decentralized storage solutions will ensure the long-term preservation and accessibility of the archived content.
2. **User-friendly Interface**: A mobile-optimized web interface will allow easy access for contributors, curators, and patrons.
3. **Blockchain Integration**: NFTs and hypercerts will be used to represent and track the provenance of exhibited works, while digital wallets will enable self-identification and authentication.







# Akashic: Technical Roadmap



# Story Submission for Creators

The story submission feature is a crucial component of the Akashic platform, enabling creators to easily share their stories, experiences, and cultural artifacts. The submission process should be user-friendly, intuitive, and accessible to creators with varying levels of technical expertise. The platform should support a wide range of media formats and allow creators to provide relevant metadata to enhance the discoverability and context of their submissions.

The integration with IPFS and Filecoin ensures the long-term preservation and decentralized storage of the submitted content, creating a robust and trustworthy platform for creators to entrust their valuable stories and experiences.

## User Interface

1. **Web-based Form**
    - Create a responsive, mobile-friendly web form for story submission
    - Implement a clean, intuitive design with clear instructions and guidance
    - Use a multi-step form to guide creators through the submission process
2. **Drag-and-Drop Interface**
    - Incorporate a drag-and-drop interface for easy file uploads
    - Support multiple file uploads in a single submission
    - Provide real-time feedback on upload progress and success
3. **Media Format Support**
    - Allow creators to submit various media formats, including:
        - Images (JPEG, PNG, GIF)
        - Audio (MP3, WAV, AAC)
        - Video (MP4, WebM, OGG)
        - Text (TXT, PDF)
    - Implement client-side validation to ensure supported file types and sizes
4. **Metadata Input**
    - Include fields for creators to provide relevant metadata, such as:
        - Name (optional for anonymous submissions)
        - Wallet address (optional for self-identification)
        - Location (region, city, or latitude/longitude)
        - Title of the piece
        - Description
        - Tags or keywords
        - (Include other standard NFT metadata)
    - Implement input validation to ensure data consistency and integrity

## Backend Processing

1. **File Storage**
    - Upon successful submission, store the uploaded files temporarily on the server or in a storage service like Amazon S3
2. **IPFS Integration**
    - Integrate with IPFS (InterPlanetary File System) for decentralized storage of submitted content
    - Use services like Estuary or web3.storage, or interact directly with Filecoin for long-term preservation
    - Generate unique content identifiers (CIDs) for each submitted file
3. **Metadata Storage**
    - Store the associated metadata in a database (e.g., PostgreSQL, Ceramic) along with the corresponding IPFS CIDs
    - Implement proper indexing and querying mechanisms for efficient retrieval
    - Metadata should support attestation via cryptographic signature from submitter’s wallet to verify authorship
4. **Submission Confirmation**
    - Upon successful processing of the submitted files and metadata, provide a confirmation message to the creator
    - Include a unique submission ID for future reference and tracking

## Security and Privacy

1. **Authentication and Authorization**
    - Implement secure authentication mechanisms for creators (e.g., Wallet, OAuth)
2. **Anonymous Submissions**
    - Allow creators to submit stories anonymously by omitting personal information

## Error Handling

1. **Monitoring and Logging**
    - Implement comprehensive monitoring and logging mechanisms to track system health and performance
2. **Error Handling and Retry Mechanisms**
    - Implement robust error handling and retry mechanisms to handle network disruptions or service failures
    - Provide clear error messages and guidance to creators in case of submission failures

# Curation Process

Curation happens in a two-step process: 1. Filtering, and 2. Curation into thematic collections.

Initial filtering involves evaluating and selecting stories that are compelling, powerful, and of high quality. Consider professional staff for this task, such as partnering with the Internet Archive.

Curation into collections is performed by various groups according to their missions and criteria for showcasing selected works.  Collections are then placed into exhibitions.

### Technical Implementation

- Filtering can be carried out by professionals, or by a decentralized reputation-based group that applies tags, keywords, and ratings, that can be used by an algorithm that filters out lower-quality submissions for the curators.
- Partnership opportunity: Collaborate with the Internet Archive for long-term preservation and access.

# Search Function for Story Curation

The search function will empower curators to efficiently find, organize, and showcase the most compelling and impactful stories within the Akashic platform. The combination of advanced search capabilities, user-friendly tagging and categorization, and intuitive collection management tools will streamline the curation process and enable the creation of powerful, immersive exhibitions.

## Search Functionality

1. **Basic Search**
    - Allow curators to search for stories using keywords or phrases
    - Search should cover all relevant metadata fields (e.g., title, description, creator, tags)
    - Implement full-text search capabilities for efficient retrieval of relevant stories
2. **Advanced Search**
    - Provide an advanced search interface with the following features:
        - Metadata-based filters (creator, type of artifact, tags, location, date range)
        - Wildcard and partial matching for flexible search queries
    - Geolocation search
    - Allow curators to save and load complex search queries for future use
3. **Search Results**
    - Display search results in a clear, organized manner with relevant metadata
    - Implement pagination or infinite scrolling for handling large result sets
    - Allow curators to sort search results based on various criteria (e.g., relevance, date, creator)
    - Provide preview functionality for quick assessment of story content (e.g., thumbnails, excerpts)

## Tagging and Categorization

1. **Tagging Interface**
    - Implement a user-friendly interface for curators to add, edit, and remove tags for stories
    - Suggest existing tags based on previously used tags or common keywords
    - Allow curators to create new tags as needed
2. **Categorization**
    - Enable curators to assign stories to collections
    - Provide an interface for managing and organizing collections (e.g., create, edit, delete)
    - Allow stories to be assigned to multiple collections

## Collection Management

1. **Collection Creation**
    - Provide a simple, intuitive interface for curators to create new collections
    - Allow curators to specify collection metadata (e.g., title, description, theme)
2. **Story Assignment**
    - Enable curators to easily add stories to collections
    - Allow curators to remove stories from collections as needed
    - Provide an option to bulk-assign stories to collections based on search results or filters
3. **Collection Organization**
    - Implement a drag-and-drop interface for curators to arrange stories within a collection
    - Allow curators to specify the order or sequence of stories in a collection
    - Provide options for grouping stories within a collection based on metadata or themes
4. **Gallery Layout Templates**
    - Offer a range of pre-designed gallery layout templates for showcasing collections
    - Allow curators to customize gallery layouts based on their preferences
    - Provide easy integration with virtual spaces like Monaverse or OnCyber for immersive exhibitions

## Technical Considerations

1. **Database**
    - Analyze feasibility of using a Ceramic-based data store for flexible and scalable storage of stories and metadata, to maximally leverage the censorship-resistant IPFS stack.
    - Implement efficient indexing strategies for optimized search performance - (e.g. Meilisearch, or caching on a local indexed DB)
2. **Search Engine**
    - Integrate a powerful search engine (e.g., Meilisearch) for full-text search capabilities
    - Leverage the search engine's built-in features for handling complex queries and filters
3. **Caching**
    - Implement caching mechanisms to improve search performance and reduce reliance on decentralized storage
    - Use a CDN for fast file access
4. **API Design**
    - Design a RESTful API for the search function, allowing for easy integration with other components
    - Use clear, consistent naming conventions and documentation for API endpoints and parameters
5. **AI**
    - Explore use of AI techniques to transcribe videos, and vectorize text for semantic retrieval
    - Develop retrieval-augmented-generation flow for searching via natural language
    - Include facilities for AI Language translation
        - Explore translation and voice generation in the same voice but different language

# Discovery, NFTs, And Financial Support

## Display

Discovery can happen in multiple ways. As well as allowing curators to create exhibits, the web application will include a dynamic globe with placemarks for the stories.

## Exhibitions

An exhibition takes a curated collection and displays it, showcasing selected works.

Each featured story will be encapsulated into an on-chain representation (e.g. NFT) to represent each exhibit, and assigned a unique location within the exhibition's address space. In the case of a 3D “metaverse” gallery, this address would be spatial.

We will use methods of our partners such as Artizen to allow Patrons exploring the exhibits will be able  to the works, purchasing a portion of the hypercert as a memento and a record of their impact.

Akashic supports the creation of immersive 3D gallery spaces for exhibitions.

### Technical Implementation

- 3D Gallery Partner: Integrate with MonaVerse for creating virtual exhibition spaces
    - Monaverse is willing to create gallery templates for us
- NFT Partner: Collaborate with Artizen for tokenization and provenance tracking of exhibited works

## NFTs and Hypercerts

hypercert: copy of the art with a donation certificate

working with the artizen fund and hypercerts foundation to execute .

# Possibilities For a Data Commons

The stories and art gathered as part of Akashic are available, part of a data commons. Curated collections are a layer placed on top of this substrate that are also open and available. Other sorts of data structures can be overlaid. 

One data overlay we envision for future iterations is allowing curators to create connections between stories. This graph structure can be represented using something like ComposeDB. We can create an interface to visualize and traverse the interconnections between related refugee stories, weaving the threads of personal narrative into a rich multi-cultural tapestry. 

# License

- Software written will be open source. Wherever possible it will be dual-licensed MIT/Apache.


