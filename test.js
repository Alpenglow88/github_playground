import { Octokit } from "octokit";

// async function test() {
// const octokit = new Octokit({
//     auth: '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'
//   })
  
//    await octokit.request('GET /repos/{owner}/{repo}/labels', {
//     owner: 'Alpenglow88',
//     repo: 'github_playground',
//     headers: {
//       'X-GitHub-Api-Version': '2022-11-28'
//     }
//   })
// }
// test()


// Octokit.js
// https://github.com/octokit/core.js#readme
const octokit = new Octokit({
  auth: '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'
})

await octokit.request('GET /repos/{owner}/{repo}/labels', {
  owner: 'Alpenglow88',
  repo: 'github_playground',
  headers: {
    'X-GitHub-Api-Version': '2022-11-28'
  }
})
await console.log(oktokit.response)
