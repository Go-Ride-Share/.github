## Summary of Profiling Results

The table below consolidates average response times, total requests, and error counts for each endpoint across Azure Functions:

| **Endpoint**                  | **Avg. Response Time (ms)** | **Total Requests** | **Failed Requests** | **Error Rate** |
|-------------------------------|-----------------------------|---------------------|----------------------|----------------|
| Overall                       | 232                         | 13.35k             | 17                   | 0.12%          |
| GetAllPosts                   | 576                         | 1.08k              | 2                    | 0.18%          |
| PollConversation              | 481                         | 1.07k              | 1                    | 0.09%          |
| GetAllConversations           | 466                         | 1.36k              | 1                    | 0.07%          |
| CreateConversation            | 296                         | 1.01k              | 1                    | 0.10%          |
| GetPosts                      | 219                         | 2.22k              | 8                    | 0.36%          |
| VerifyLoginCredentials        | 193                         | 1.01k              | 0                    | 0%             |
| CreateUser                    | 141                         | 1.00k              | 0                    | 0%             |  
| PostMessage                   | 80.8                        | 1.20k              | 0                    | 0%             |
| SavePost                      | 45.0                        | 1.00k              | 0                    | 0%             |
| GetUser                       | 32.4                        | 1.41k              | 4                    | 0.28%          |
| EditUser                      | 34.1                        | 1.00k              | 0                    | 0%             |

---
