//On the basis of fetchUserData function it fetches user data.
// if the the userId is divisble by 3 it will return and if not then it will
// show error.
Future<String> fetchUserData(int userId) async {
  await Future.delayed(Duration(seconds: 3));
  return userId % 3 == 0 ? "User data for $userId" : throw "Error for $userId";
}

//This is asynchronous function this calls the fetchUserData and
//prints the result.
void main() async {
  try {
    print(await fetchUserData(3));
  } catch (e) {
    print(e);
  }
//This is a list where userId is for that we have to fitch data .
  List<int> userIds = [6, 2, 9, 4, 12];
//userId got map so that to create a future for each userId, if an error
//comes it  will return a failure message.
  List<Future<String>> futures = userIds.map((userId) async {
    try {
      return await fetchUserData(userId);
    } catch (error) {
      return "Failed to fetch data for $userId: $error";
    }
  }).toList();

  //This funtion waits for all futures to complete and stores
  //their result in a list
  List<String> results = await Future.wait(futures);

  for (var result in results) {
    print(result);
  }
}
