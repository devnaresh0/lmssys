import 'package:flutter/material.dart';

class NotesPage extends StatefulWidget {
  const NotesPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _NotesPageState createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  int _selectedIndex = 2; // Notes tab is selected

  List<Map<String, dynamic>> notes = [
    {
      'date': '20\nFEB',
      'title': 'Software Engineering',
      'description': 'Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'bookmarks': 24,
      'sections': [
        {
          'content': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
        },
        {
          'content': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
        },
        {
          'attachment': {
            'name': 'softwareengineeringdocument20230218184452.pdf',
            'type': 'View Attachment',
            'icon': Icons.picture_as_pdf,
            'color': Colors.blue,
          }
        },
        {
          'content': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
        },
        {
          'attachment': {
            'name': 'softwareengineeringdocument20230218184452.pdf',
            'type': 'View Attachment',
            'icon': Icons.picture_as_pdf,
            'color': Colors.red,
          }
        },
        {
          'content': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
        },
      ]
    },
    {
      'date': '21\nFEB',
      'title': 'Database Management',
      'description': 'Comprehensive notes on database design, normalization, and SQL queries for efficient data management.',
      'bookmarks': 18,
      'sections': [
        {
          'content': 'Database management systems (DBMS) are software applications that interact with users, applications, and the database itself to capture and analyze data. The primary purpose is to provide a systematic way to create, retrieve, update and manage data.',
        },
        {
          'attachment': {
            'name': 'database_fundamentals_guide.pdf',
            'type': 'View Attachment',
            'icon': Icons.picture_as_pdf,
            'color': Colors.green,
          }
        },
        {
          'content': 'SQL (Structured Query Language) is a domain-specific language used in programming and designed for managing data held in a relational database management system, or for stream processing in a relational data stream management system.',
        },
      ]
    },
    {
      'date': '22\nFEB',
      'title': 'Data Structures',
      'description': 'Detailed study of arrays, linked lists, stacks, queues, trees, and graphs with implementation examples.',
      'bookmarks': 31,
      'sections': [
        {
          'content': 'Data structures are ways of organizing and storing data so that they can be accessed and worked with efficiently. They define the relationship between the data, and the operations that can be performed on the data.',
        },
        {
          'content': 'Arrays are one of the most fundamental data structures. They store elements of the same type in contiguous memory locations, allowing for efficient random access to elements using indices.',
        },
        {
          'attachment': {
            'name': 'datastructures_implementation.pdf',
            'type': 'View Attachment',
            'icon': Icons.picture_as_pdf,
            'color': Colors.purple,
          }
        },
      ]
    },
    {
      'date': '23\nFEB',
      'title': 'Web Development',
      'description': 'Modern web development concepts including HTML5, CSS3, JavaScript, and popular frameworks.',
      'bookmarks': 27,
      'sections': [
        {
          'content': 'Web development is the work involved in developing a website for the Internet or an intranet. It can range from developing a simple single static page to complex web applications.',
        },
        {
          'attachment': {
            'name': 'html_css_reference_sheet.pdf',
            'type': 'View Attachment',
            'icon': Icons.picture_as_pdf,
            'color': Colors.orange,
          }
        },
        {
          'content': 'JavaScript is a programming language that is one of the core technologies of the World Wide Web, alongside HTML and CSS. It enables interactive web pages and is an essential part of web applications.',
        },
      ]
    },
    {
      'date': '24\nFEB',
      'title': 'Mobile App Development',
      'description': 'Flutter and React Native development patterns, state management, and cross-platform considerations.',
      'bookmarks': 15,
      'sections': [
        {
          'content': 'Mobile app development is the process of creating software applications that run on mobile devices. These applications can be pre-installed or downloaded and installed by the user.',
        },
        {
          'content': 'Flutter is Google\'s UI toolkit for building natively compiled applications for mobile, web, and desktop from a single codebase. It uses the Dart programming language.',
        },
        {
          'attachment': {
            'name': 'flutter_development_guide.pdf',
            'type': 'View Attachment',
            'icon': Icons.picture_as_pdf,
            'color': Colors.cyan,
          }
        },
      ]
    },
    {
      'date': '25\nFEB',
      'title': 'Machine Learning',
      'description': 'Introduction to ML algorithms, neural networks, and practical implementation using Python libraries.',
      'bookmarks': 42,
      'sections': [
        {
          'content': 'Machine Learning is a subset of artificial intelligence that provides systems the ability to automatically learn and improve from experience without being explicitly programmed.',
        },
        {
          'attachment': {
            'name': 'ml_algorithms_comparison.pdf',
            'type': 'View Attachment',
            'icon': Icons.picture_as_pdf,
            'color': Colors.indigo,
          }
        },
        {
          'content': 'Neural networks are computing systems inspired by biological neural networks. They consist of interconnected nodes (neurons) that work together to solve specific problems.',
        },
        {
          'attachment': {
            'name': 'python_ml_libraries.pdf',
            'type': 'View Attachment',
            'icon': Icons.picture_as_pdf,
            'color': Colors.teal,
          }
        },
      ]
    },
    {
      'date': '26\nFEB',
      'title': 'Cloud Computing',
      'description': 'AWS, Azure, and Google Cloud services, deployment strategies, and scalability considerations.',
      'bookmarks': 33,
      'sections': [
        {
          'content': 'Cloud computing is the delivery of computing services including servers, storage, databases, networking, software, analytics, and intelligence over the Internet to offer faster innovation, flexible resources, and economies of scale.',
        },
        {
          'content': 'Amazon Web Services (AWS) is a comprehensive, evolving cloud computing platform provided by Amazon. It provides a mix of infrastructure as a service, platform as a service and packaged software as a service offerings.',
        },
        {
          'attachment': {
            'name': 'cloud_services_comparison.pdf',
            'type': 'View Attachment',
            'icon': Icons.picture_as_pdf,
            'color': Colors.amber,
          }
        },
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.grey[400]!, width: 2),
              ),
            ),
            SizedBox(width: 12),
            Text(
              'MY NOTES',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                letterSpacing: 1,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.grey[600]),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.sort, color: Colors.grey[600]),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Year header
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Text(
              '2024',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.grey[600],
              ),
            ),
          ),
          
          // Notes List
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 16),
              itemCount: notes.length,
              itemBuilder: (context, index) {
                return _buildNoteCard(notes[index], index);
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add new note functionality
        },
        backgroundColor: Colors.blue[800],
        child: Icon(Icons.add, color: Colors.white),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(0, -2),
            ),
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue[600],
          unselectedItemColor: Colors.grey[400],
          selectedLabelStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
          unselectedLabelStyle: TextStyle(fontSize: 12),
          backgroundColor: Colors.white,
          elevation: 0,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.extension_outlined),
              activeIcon: Icon(Icons.extension),
              label: 'Courses',
            ),
            BottomNavigationBarItem(
              icon: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.blue[600],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(Icons.note, color: Colors.white, size: 20),
              ),
              label: 'Notes',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble_outline),
              activeIcon: Icon(Icons.chat_bubble),
              label: 'Chat',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              activeIcon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNoteCard(Map<String, dynamic> note, int index) {
    return GestureDetector(
      onTap: () {
        _showNoteDetails(note);
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 16),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.08),
              spreadRadius: 1,
              blurRadius: 8,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Date Container
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  note['date'],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[700],
                    height: 1.2,
                  ),
                ),
              ),
            ),
            
            SizedBox(width: 16),
            
            // Content
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    note['title'],
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    note['description'],
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey[600],
                      height: 1.4,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            
            SizedBox(width: 12),
            
            // Bookmark count
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.red[50],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.bookmark_outline,
                    size: 14,
                    color: Colors.red[400],
                  ),
                  SizedBox(width: 4),
                  Text(
                    note['bookmarks'].toString(),
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.red[400],
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showNoteDetails(Map<String, dynamic> note) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => NoteDetailPage(note: note),
      ),
    );
  }
}

class NoteDetailPage extends StatelessWidget {
  final Map<String, dynamic> note;
  
  const NoteDetailPage({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          note['title'].toString().toUpperCase(),
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w600,
            letterSpacing: 1,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.bookmark_outline, color: Colors.grey[600]),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.share_outlined, color: Colors.grey[600]),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.grey[600]),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Note header info
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.08),
                    spreadRadius: 1,
                    blurRadius: 8,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        note['date'],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey[700],
                          height: 1.2,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          note['title'],
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.black87,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Created on ${note['date'].replaceAll('\n', ' ')}, 2024',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            
            SizedBox(height: 24),
            
            // Note sections
            if (note['sections'] != null && note['sections'].isNotEmpty)
              ...note['sections'].map<Widget>((section) {
                if (section['content'] != null) {
                  return _buildContentSection(section['content']);
                } else if (section['attachment'] != null) {
                  return _buildAttachmentSection(section['attachment']);
                }
                return SizedBox.shrink();
              }).toList(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add functionality to edit or add to note
        },
        backgroundColor: Colors.blue[800],
        child: Icon(Icons.edit, color: Colors.white),
      ),
    );
  }

  Widget _buildContentSection(String content) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.08),
            spreadRadius: 1,
            blurRadius: 8,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Text(
        content,
        style: TextStyle(
          fontSize: 14,
          color: Colors.grey[700],
          height: 1.5,
        ),
      ),
    );
  }

  Widget _buildAttachmentSection(Map<String, dynamic> attachment) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.08),
            spreadRadius: 1,
            blurRadius: 8,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: attachment['color'].withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(
              attachment['icon'],
              color: attachment['color'],
              size: 24,
            ),
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  attachment['name'],
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  attachment['type'],
                  style: TextStyle(
                    fontSize: 12,
                    color: attachment['color'],
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.arrow_forward_ios,
            size: 16,
            color: Colors.grey[400],
          ),
        ],
      ),
    );
  }
}